.class final Landroid/icu/text/BreakTransliterator;
.super Landroid/icu/text/Transliterator;
.source "BreakTransliterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;
    }
.end annotation


# static fields
.field static final LETTER_OR_MARK_MASK:I = 0x1fe


# instance fields
.field private bi:Landroid/icu/text/BreakIterator;

.field private boundaries:[I

.field private boundaryCount:I

.field private insertion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V
    .locals 2

    const-string/jumbo v0, " "

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/icu/text/BreakTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;Landroid/icu/text/BreakIterator;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;Landroid/icu/text/BreakIterator;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    const/16 v0, 0x32

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    iput-object p3, p0, Landroid/icu/text/BreakTransliterator;->bi:Landroid/icu/text/BreakIterator;

    iput-object p4, p0, Landroid/icu/text/BreakTransliterator;->insertion:Ljava/lang/String;

    return-void
.end method

.method static register()V
    .locals 3

    new-instance v0, Landroid/icu/text/BreakTransliterator;

    const-string/jumbo v1, "Any-BreakInternal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/BreakTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerInstance(Landroid/icu/text/Transliterator;Z)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/BreakTransliterator;->insertion:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    :cond_0
    return-void
.end method

.method public getBreakIterator()Landroid/icu/text/BreakIterator;
    .locals 2

    iget-object v0, p0, Landroid/icu/text/BreakTransliterator;->bi:Landroid/icu/text/BreakIterator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/icu/util/ULocale;

    const-string/jumbo v1, "th_TH"

    invoke-direct {v0, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getWordInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/BreakTransliterator;->bi:Landroid/icu/text/BreakIterator;

    :cond_0
    iget-object v0, p0, Landroid/icu/text/BreakTransliterator;->bi:Landroid/icu/text/BreakIterator;

    return-object v0
.end method

.method public getInsertion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/BreakTransliterator;->insertion:Ljava/lang/String;

    return-object v0
.end method

.method protected declared-synchronized handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 12

    const/4 v11, 0x1

    monitor-enter p0

    const/4 v6, 0x0

    :try_start_0
    iput v6, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/icu/text/BreakTransliterator;->getBreakIterator()Landroid/icu/text/BreakIterator;

    iget-object v6, p0, Landroid/icu/text/BreakTransliterator;->bi:Landroid/icu/text/BreakIterator;

    new-instance v7, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;

    iget v8, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v9, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iget v10, p2, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-direct {v7, p1, v8, v9, v10}, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;-><init>(Landroid/icu/text/Replaceable;III)V

    invoke-virtual {v6, v7}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    iget-object v6, p0, Landroid/icu/text/BreakTransliterator;->bi:Landroid/icu/text/BreakIterator;

    invoke-virtual {v6}, Landroid/icu/text/BreakIterator;->first()I

    move-result v0

    :goto_0
    const/4 v6, -0x1

    if-eq v0, v6, :cond_3

    iget v6, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    if-ge v0, v6, :cond_3

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    iget-object v6, p0, Landroid/icu/text/BreakTransliterator;->bi:Landroid/icu/text/BreakIterator;

    invoke-virtual {v6}, Landroid/icu/text/BreakIterator;->next()I

    move-result v0

    goto :goto_0

    :cond_1
    add-int/lit8 v6, v0, -0x1

    invoke-static {p1, v6}, Landroid/icu/text/UTF16;->charAt(Landroid/icu/text/Replaceable;I)I

    move-result v1

    invoke-static {v1}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v5

    shl-int v6, v11, v5

    and-int/lit16 v6, v6, 0x1fe

    if-eqz v6, :cond_0

    invoke-static {p1, v0}, Landroid/icu/text/UTF16;->charAt(Landroid/icu/text/Replaceable;I)I

    move-result v1

    invoke-static {v1}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v5

    shl-int v6, v11, v5

    and-int/lit16 v6, v6, 0x1fe

    if-eqz v6, :cond_0

    iget v6, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    iget-object v7, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    array-length v7, v7

    if-lt v6, v7, :cond_2

    iget-object v6, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    new-array v4, v6, [I

    iget-object v6, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    iget-object v7, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    array-length v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v8, v4, v9, v7}, Ljava/lang/System;->arraycopy([II[III)V

    iput-object v4, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    :cond_2
    iget-object v6, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    iget v7, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    aput v0, v6, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_1
    iget v6, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    if-eqz v6, :cond_4

    iget v6, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    iget-object v7, p0, Landroid/icu/text/BreakTransliterator;->insertion:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    mul-int v2, v6, v7

    iget-object v6, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    iget v7, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    add-int/lit8 v7, v7, -0x1

    aget v3, v6, v7

    :goto_2
    iget v6, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    if-lez v6, :cond_4

    iget-object v6, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    iget v7, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    aget v0, v6, v7

    iget-object v6, p0, Landroid/icu/text/BreakTransliterator;->insertion:Ljava/lang/String;

    invoke-interface {p1, v0, v0, v6}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    goto :goto_2

    :cond_4
    iget v6, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    add-int/2addr v6, v2

    iput v6, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    iget v6, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    add-int/2addr v6, v2

    iput v6, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    if-eqz p3, :cond_5

    add-int v6, v3, v2

    :goto_3
    iput v6, p2, Landroid/icu/text/Transliterator$Position;->start:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_2
    iget v6, p2, Landroid/icu/text/Transliterator$Position;->limit:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public setBreakIterator(Landroid/icu/text/BreakIterator;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/text/BreakTransliterator;->bi:Landroid/icu/text/BreakIterator;

    return-void
.end method

.method public setInsertion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/text/BreakTransliterator;->insertion:Ljava/lang/String;

    return-void
.end method
