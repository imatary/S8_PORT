.class public final Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
.super Ljava/lang/Object;
.source "Normalizer2Impl.java"

# interfaces
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Normalizer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReorderingBuffer"
.end annotation


# instance fields
.field private final app:Ljava/lang/Appendable;

.field private final appIsStringBuilder:Z

.field private codePointLimit:I

.field private codePointStart:I

.field private final impl:Landroid/icu/impl/Normalizer2Impl;

.field private lastCC:I

.field private reorderStart:I

.field private final str:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->impl:Landroid/icu/impl/Normalizer2Impl;

    iput-object p2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->app:Ljava/lang/Appendable;

    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->app:Ljava/lang/Appendable;

    instance-of v0, v0, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->appIsStringBuilder:Z

    check-cast p2, Ljava/lang/StringBuilder;

    iput-object p2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->setIterator()V

    invoke-direct {p0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->previousCC()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    iget v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    if-le v0, v2, :cond_2

    :cond_1
    invoke-direct {p0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->previousCC()I

    move-result v0

    if-gt v0, v2, :cond_1

    :cond_2
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->appIsStringBuilder:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    goto :goto_0
.end method

.method private insert(II)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->setIterator()V

    invoke-direct {p0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->skipPrevious()V

    :cond_0
    invoke-direct {p0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->previousCC()I

    move-result v0

    if-gt v0, p2, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_2

    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    int-to-char v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    if-gt p2, v3, :cond_1

    iget v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    if-gt p2, v3, :cond_1

    iget v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    goto :goto_0
.end method

.method private previousCC()I
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    iget v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    iget v2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    if-lt v1, v2, :cond_0

    return v3

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->codePointBefore(I)I

    move-result v0

    iget v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    const/16 v1, 0x300

    if-ge v0, v1, :cond_1

    return v3

    :cond_1
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v1, v0}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    move-result v1

    return v1
.end method

.method private setIterator()V
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    return-void
.end method

.method private skipPrevious()V
    .locals 3

    iget v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointLimit:I

    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->offsetByCodePoints(II)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->codePointStart:I

    return-void
.end method


# virtual methods
.method public append(C)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    .locals 2

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    :cond_0
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    .locals 1

    if-eq p2, p3, :cond_0

    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    :cond_0
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(C)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    move-result-object v0

    return-object v0
.end method

.method public append(II)V
    .locals 1

    iget v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    if-le v0, p2, :cond_0

    if-nez p2, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    iput p2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    const/4 v0, 0x1

    if-gt p2, v0, :cond_1

    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->insert(II)V

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;IIII)V
    .locals 3

    const/4 v2, 0x1

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    iget v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    if-le v1, p4, :cond_1

    if-nez p4, :cond_5

    :cond_1
    if-gt p5, v2, :cond_4

    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int v2, p3, p2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    iput p5, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    :cond_3
    return-void

    :cond_4
    if-gt p4, v2, :cond_2

    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    goto :goto_0

    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    invoke-direct {p0, v0, p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->insert(II)V

    :goto_1
    if-ge p2, p3, :cond_3

    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    if-ge p2, p3, :cond_6

    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v1, v0}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    move-result p4

    :goto_2
    invoke-virtual {p0, v0, p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(II)V

    goto :goto_1

    :cond_6
    move p4, p5

    goto :goto_2
.end method

.method public appendZeroCC(I)V
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    return-void
.end method

.method public equals(Ljava/lang/CharSequence;II)Z
    .locals 6

    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v1, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->equal(Ljava/lang/CharSequence;IILjava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method

.method public flush()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->appIsStringBuilder:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    :goto_0
    iput v3, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->app:Ljava/lang/Appendable;

    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v1, 0x0

    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->appIsStringBuilder:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    :goto_0
    iput v3, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    return-object p0

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->app:Ljava/lang/Appendable;

    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v1, 0x0

    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getLastCC()I
    .locals 1

    iget v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    return v0
.end method

.method public getStringBuilder()Ljava/lang/StringBuilder;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    return-void
.end method

.method public removeSuffix(I)V
    .locals 3

    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    sub-int v2, v0, p1

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->lastCC:I

    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iput v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->reorderStart:I

    return-void
.end method

.method public setLastChar(C)V
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    return-void
.end method
