.class final Landroid/icu/text/UnhandledBreakEngine;
.super Ljava/lang/Object;
.source "UnhandledBreakEngine.java"

# interfaces
.implements Landroid/icu/text/LanguageBreakEngine;


# instance fields
.field private final fHandled:[Landroid/icu/text/UnicodeSet;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x5

    new-array v1, v1, [Landroid/icu/text/UnicodeSet;

    iput-object v1, p0, Landroid/icu/text/UnhandledBreakEngine;->fHandled:[Landroid/icu/text/UnicodeSet;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/icu/text/UnhandledBreakEngine;->fHandled:[Landroid/icu/text/UnicodeSet;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/UnhandledBreakEngine;->fHandled:[Landroid/icu/text/UnicodeSet;

    new-instance v2, Landroid/icu/text/UnicodeSet;

    invoke-direct {v2}, Landroid/icu/text/UnicodeSet;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public findBreaks(Ljava/text/CharacterIterator;IIZILandroid/icu/text/DictionaryBreakEngine$DequeI;)I
    .locals 1

    invoke-interface {p1, p3}, Ljava/text/CharacterIterator;->setIndex(I)C

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized handleChar(II)V
    .locals 3

    monitor-enter p0

    if-ltz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/icu/text/UnhandledBreakEngine;->fHandled:[Landroid/icu/text/UnicodeSet;

    array-length v1, v1

    if-ge p2, v1, :cond_0

    const v1, 0x7fffffff

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/UnhandledBreakEngine;->fHandled:[Landroid/icu/text/UnicodeSet;

    aget-object v1, v1, p2

    invoke-virtual {v1, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x100a

    invoke-static {p1, v1}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result v0

    iget-object v1, p0, Landroid/icu/text/UnhandledBreakEngine;->fHandled:[Landroid/icu/text/UnicodeSet;

    aget-object v1, v1, p2

    const/16 v2, 0x100a

    invoke-virtual {v1, v2, v0}, Landroid/icu/text/UnicodeSet;->applyIntPropertyValue(II)Landroid/icu/text/UnicodeSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public handles(II)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p2, :cond_0

    iget-object v1, p0, Landroid/icu/text/UnhandledBreakEngine;->fHandled:[Landroid/icu/text/UnicodeSet;

    array-length v1, v1

    if-ge p2, v1, :cond_0

    iget-object v0, p0, Landroid/icu/text/UnhandledBreakEngine;->fHandled:[Landroid/icu/text/UnicodeSet;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    :cond_0
    return v0
.end method
