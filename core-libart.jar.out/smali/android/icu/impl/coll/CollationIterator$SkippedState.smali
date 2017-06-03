.class final Landroid/icu/impl/coll/CollationIterator$SkippedState;
.super Ljava/lang/Object;
.source "CollationIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/CollationIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SkippedState"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private final newBuffer:Ljava/lang/StringBuilder;

.field private final oldBuffer:Ljava/lang/StringBuilder;

.field private pos:I

.field private skipLengthAtMatch:I

.field private state:Landroid/icu/util/CharsTrie$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->newBuffer:Ljava/lang/StringBuilder;

    new-instance v0, Landroid/icu/util/CharsTrie$State;

    invoke-direct {v0}, Landroid/icu/util/CharsTrie$State;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->state:Landroid/icu/util/CharsTrie$State;

    return-void
.end method


# virtual methods
.method backwardNumCodePoints(I)I
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iget v2, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    sub-int v0, v2, v1

    if-lez v0, :cond_1

    if-lt v0, p1, :cond_0

    iget v2, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    sub-int/2addr v2, p1

    iput v2, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    return p1

    :cond_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    sub-int v3, v0, p1

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->offsetByCodePoints(II)I

    move-result v2

    iput v2, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    return v0

    :cond_1
    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    neg-int v4, p1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->offsetByCodePoints(II)I

    move-result v2

    iput v2, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    return v5
.end method

.method clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iput v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    return-void
.end method

.method hasNext()Z
    .locals 2

    iget v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method incBeyond()V
    .locals 1

    sget-boolean v0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    return-void
.end method

.method isEmpty()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method next()I
    .locals 3

    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v0

    iget v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    return v0
.end method

.method recordMatch()V
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->newBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->skipLengthAtMatch:I

    return-void
.end method

.method replaceMatch()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    if-le v1, v0, :cond_0

    iput v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->oldBuffer:Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->newBuffer:Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->skipLengthAtMatch:I

    invoke-virtual {v1, v4, v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    iput v4, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->pos:I

    return-void
.end method

.method resetToTrieState(Landroid/icu/util/CharsTrie;)V
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->state:Landroid/icu/util/CharsTrie$State;

    invoke-virtual {p1, v0}, Landroid/icu/util/CharsTrie;->resetToState(Landroid/icu/util/CharsTrie$State;)Landroid/icu/util/CharsTrie;

    return-void
.end method

.method saveTrieState(Landroid/icu/util/CharsTrie;)V
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->state:Landroid/icu/util/CharsTrie$State;

    invoke-virtual {p1, v0}, Landroid/icu/util/CharsTrie;->saveState(Landroid/icu/util/CharsTrie$State;)Landroid/icu/util/CharsTrie;

    return-void
.end method

.method setFirstSkipped(I)V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->skipLengthAtMatch:I

    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->newBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->newBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method skip(I)V
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$SkippedState;->newBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    return-void
.end method
