.class Landroid/icu/text/CompoundTransliterator;
.super Landroid/icu/text/Transliterator;
.source "CompoundTransliterator.java"


# instance fields
.field private numAnonymousRBTs:I

.field private trans:[Landroid/icu/text/Transliterator;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;[Landroid/icu/text/Transliterator;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/CompoundTransliterator;->numAnonymousRBTs:I

    iput-object p3, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    iput p4, p0, Landroid/icu/text/CompoundTransliterator;->numAnonymousRBTs:I

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/Transliterator;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/CompoundTransliterator;-><init>(Ljava/util/List;I)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/Transliterator;",
            ">;I)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string/jumbo v0, ""

    invoke-direct {p0, v0, v2}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    iput v1, p0, Landroid/icu/text/CompoundTransliterator;->numAnonymousRBTs:I

    iput-object v2, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    invoke-direct {p0, p1, v1, v1}, Landroid/icu/text/CompoundTransliterator;->init(Ljava/util/List;IZ)V

    iput p2, p0, Landroid/icu/text/CompoundTransliterator;->numAnonymousRBTs:I

    return-void
.end method

.method private static _smartAppend(Ljava/lang/StringBuilder;C)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private computeMaximumContextLength()V
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/icu/text/Transliterator;->getMaximumContextLength()I

    move-result v1

    if-le v1, v2, :cond_0

    move v2, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Landroid/icu/text/Transliterator;->setMaximumContextLength(I)V

    return-void
.end method

.method private init(Ljava/util/List;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/Transliterator;",
            ">;IZ)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Landroid/icu/text/Transliterator;

    iput-object v4, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    if-nez p2, :cond_0

    move v2, v1

    :goto_1
    iget-object v5, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/Transliterator;

    aput-object v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v0, -0x1

    sub-int v2, v4, v1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    if-ne p2, v4, :cond_4

    if-eqz p3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    if-lez v1, :cond_2

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v4, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/icu/text/Transliterator;->setID(Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0}, Landroid/icu/text/CompoundTransliterator;->computeMaximumContextLength()V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 4

    new-instance v1, Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    new-instance v2, Landroid/icu/text/UnicodeSet;

    invoke-direct {v2}, Landroid/icu/text/UnicodeSet;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    iget-object v3, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1, p2, v2}, Landroid/icu/text/Transliterator;->addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    invoke-virtual {p3, v2}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    array-length v0, v0

    return v0
.end method

.method public getTransliterator(I)Landroid/icu/text/Transliterator;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 9

    iget-object v6, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    array-length v6, v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_0

    iget v6, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iput v6, p2, Landroid/icu/text/Transliterator$Position;->start:I

    return-void

    :cond_0
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->start:I

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v6, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    array-length v6, v6

    if-ge v3, v6, :cond_1

    iput v1, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v4, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iget v6, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v7, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    if-ne v6, v7, :cond_2

    :cond_1
    add-int/2addr v0, v2

    iput v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    return-void

    :cond_2
    iget-object v6, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    aget-object v6, v6, v3

    invoke-virtual {v6, p1, p2, p3}, Landroid/icu/text/Transliterator;->filteredTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V

    if-nez p3, :cond_3

    iget v6, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v7, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    if-eq v6, v7, :cond_3

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ERROR: Incomplete non-incremental transliteration by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    iget v6, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    sub-int/2addr v6, v4

    add-int/2addr v2, v6

    if-eqz p3, :cond_4

    iget v6, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iput v6, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public safeClone()Landroid/icu/text/Transliterator;
    .locals 6

    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->getFilter()Landroid/icu/text/UnicodeFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/icu/text/UnicodeSet;

    if-eqz v2, :cond_0

    new-instance v1, Landroid/icu/text/UnicodeSet;

    nop

    nop

    invoke-direct {v1, v0}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    move-object v0, v1

    :cond_0
    new-instance v2, Landroid/icu/text/CompoundTransliterator;

    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    iget v5, p0, Landroid/icu/text/CompoundTransliterator;->numAnonymousRBTs:I

    invoke-direct {v2, v3, v0, v4, v5}, Landroid/icu/text/CompoundTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;[Landroid/icu/text/Transliterator;I)V

    return-object v2
.end method

.method public toRules(Z)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const/16 v5, 0x3b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/icu/text/CompoundTransliterator;->numAnonymousRBTs:I

    if-lt v3, v6, :cond_0

    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->getFilter()Landroid/icu/text/UnicodeFilter;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->getFilter()Landroid/icu/text/UnicodeFilter;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/icu/text/UnicodeFilter;->toPattern(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "%Pass"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/icu/text/Transliterator;->toRules(Z)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Landroid/icu/text/CompoundTransliterator;->numAnonymousRBTs:I

    if-le v3, v6, :cond_1

    if-lez v0, :cond_1

    iget-object v3, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "%Pass"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "::Null;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_1
    const/16 v3, 0xa

    invoke-static {v2, v3}, Landroid/icu/text/CompoundTransliterator;->_smartAppend(Ljava/lang/StringBuilder;C)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v5}, Landroid/icu/text/CompoundTransliterator;->_smartAppend(Ljava/lang/StringBuilder;C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_3

    iget-object v3, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/icu/text/Transliterator;->toRules(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/icu/text/Transliterator;->baseToRules(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
