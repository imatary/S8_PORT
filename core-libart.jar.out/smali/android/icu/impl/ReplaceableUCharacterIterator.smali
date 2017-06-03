.class public Landroid/icu/impl/ReplaceableUCharacterIterator;
.super Landroid/icu/text/UCharacterIterator;
.source "ReplaceableUCharacterIterator.java"


# instance fields
.field private currentIndex:I

.field private replaceable:Landroid/icu/text/Replaceable;


# direct methods
.method public constructor <init>(Landroid/icu/text/Replaceable;)V
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/UCharacterIterator;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/UCharacterIterator;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Landroid/icu/text/ReplaceableString;

    invoke-direct {v0, p1}, Landroid/icu/text/ReplaceableString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;)V
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/UCharacterIterator;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Landroid/icu/text/ReplaceableString;

    invoke-direct {v0, p1}, Landroid/icu/text/ReplaceableString;-><init>(Ljava/lang/StringBuffer;)V

    iput-object v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Landroid/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public current()I
    .locals 2

    iget v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    iget-object v1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    invoke-interface {v1}, Landroid/icu/text/Replaceable;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    iget v1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public currentCodePoint()I
    .locals 4

    invoke-virtual {p0}, Landroid/icu/impl/ReplaceableUCharacterIterator;->current()I

    move-result v0

    int-to-char v2, v0

    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/icu/impl/ReplaceableUCharacterIterator;->next()I

    invoke-virtual {p0}, Landroid/icu/impl/ReplaceableUCharacterIterator;->current()I

    move-result v1

    invoke-virtual {p0}, Landroid/icu/impl/ReplaceableUCharacterIterator;->previous()I

    int-to-char v2, v1

    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    int-to-char v2, v0

    int-to-char v3, v1

    invoke-static {v2, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    :cond_0
    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    return v0
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    invoke-interface {v0}, Landroid/icu/text/Replaceable;->length()I

    move-result v0

    return v0
.end method

.method public getText([CI)I
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    invoke-interface {v1}, Landroid/icu/text/Replaceable;->length()I

    move-result v0

    if-ltz p2, :cond_0

    add-int v1, p2, v0

    array-length v2, p1

    if-le v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    invoke-interface {v1, v3, v0, p1, p2}, Landroid/icu/text/Replaceable;->getChars(II[CI)V

    return v0
.end method

.method public next()I
    .locals 3

    iget v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    iget-object v1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    invoke-interface {v1}, Landroid/icu/text/Replaceable;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    iget v1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public previous()I
    .locals 2

    iget v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    iget v1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public setIndex(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->replaceable:Landroid/icu/text/Replaceable;

    invoke-interface {v0}, Landroid/icu/text/Replaceable;->length()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    iput p1, p0, Landroid/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    return-void
.end method
