.class public Landroid/icu/impl/TextTrieMap;
.super Ljava/lang/Object;
.source "TextTrieMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/TextTrieMap$CharIterator;,
        Landroid/icu/impl/TextTrieMap$LongestMatchHandler;,
        Landroid/icu/impl/TextTrieMap$Node;,
        Landroid/icu/impl/TextTrieMap$ResultHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field _ignoreCase:Z

.field private _root:Landroid/icu/impl/TextTrieMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/TextTrieMap",
            "<TV;>.Node;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0([CI)[C
    .locals 1

    invoke-static {p0, p1}, Landroid/icu/impl/TextTrieMap;->subArray([CI)[C

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1([CII)[C
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/icu/impl/TextTrieMap;->subArray([CII)[C

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Ljava/lang/CharSequence;)[C
    .locals 1

    invoke-static {p0}, Landroid/icu/impl/TextTrieMap;->toCharArray(Ljava/lang/CharSequence;)[C

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/icu/impl/TextTrieMap$Node;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/icu/impl/TextTrieMap$Node;-><init>(Landroid/icu/impl/TextTrieMap;Landroid/icu/impl/TextTrieMap$Node;)V

    iput-object v0, p0, Landroid/icu/impl/TextTrieMap;->_root:Landroid/icu/impl/TextTrieMap$Node;

    iput-boolean p1, p0, Landroid/icu/impl/TextTrieMap;->_ignoreCase:Z

    return-void
.end method

.method private declared-synchronized find(Landroid/icu/impl/TextTrieMap$Node;Landroid/icu/impl/TextTrieMap$CharIterator;Landroid/icu/impl/TextTrieMap$ResultHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/TextTrieMap",
            "<TV;>.Node;",
            "Landroid/icu/impl/TextTrieMap$CharIterator;",
            "Landroid/icu/impl/TextTrieMap$ResultHandler",
            "<TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/icu/impl/TextTrieMap$Node;->values()Ljava/util/Iterator;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/icu/impl/TextTrieMap$CharIterator;->processedLength()I

    move-result v2

    invoke-interface {p3, v2, v1}, Landroid/icu/impl/TextTrieMap$ResultHandler;->handlePrefixMatch(ILjava/util/Iterator;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/icu/impl/TextTrieMap$Node;->findMatch(Landroid/icu/impl/TextTrieMap$CharIterator;)Landroid/icu/impl/TextTrieMap$Node;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0, p2, p3}, Landroid/icu/impl/TextTrieMap;->find(Landroid/icu/impl/TextTrieMap$Node;Landroid/icu/impl/TextTrieMap$CharIterator;Landroid/icu/impl/TextTrieMap$ResultHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private static subArray([CI)[C
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    array-length v1, p0

    sub-int/2addr v1, p1

    new-array v0, v1, [C

    array-length v1, v0

    invoke-static {p0, p1, v0, v2, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    return-object v0
.end method

.method private static subArray([CII)[C
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    array-length v1, p0

    if-ne p2, v1, :cond_0

    return-object p0

    :cond_0
    sub-int v1, p2, p1

    new-array v0, v1, [C

    sub-int v1, p2, p1

    invoke-static {p0, p1, v0, v2, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    return-object v0
.end method

.method private static toCharArray(Ljava/lang/CharSequence;)[C
    .locals 3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    new-array v0, v2, [C

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/icu/impl/TextTrieMap$ResultHandler",
            "<TV;>;)V"
        }
    .end annotation

    new-instance v0, Landroid/icu/impl/TextTrieMap$CharIterator;

    iget-boolean v1, p0, Landroid/icu/impl/TextTrieMap;->_ignoreCase:Z

    invoke-direct {v0, p1, p2, v1}, Landroid/icu/impl/TextTrieMap$CharIterator;-><init>(Ljava/lang/CharSequence;IZ)V

    iget-object v1, p0, Landroid/icu/impl/TextTrieMap;->_root:Landroid/icu/impl/TextTrieMap$Node;

    invoke-direct {p0, v1, v0, p3}, Landroid/icu/impl/TextTrieMap;->find(Landroid/icu/impl/TextTrieMap$Node;Landroid/icu/impl/TextTrieMap$CharIterator;Landroid/icu/impl/TextTrieMap$ResultHandler;)V

    return-void
.end method

.method public find(Ljava/lang/CharSequence;Landroid/icu/impl/TextTrieMap$ResultHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Landroid/icu/impl/TextTrieMap$ResultHandler",
            "<TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    return-void
.end method

.method public get(Ljava/lang/CharSequence;I)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I)",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/TextTrieMap;->get(Ljava/lang/CharSequence;I[I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/CharSequence;I[I)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I[I)",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v0, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;

    invoke-direct {v0, v1}, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;-><init>(Landroid/icu/impl/TextTrieMap$LongestMatchHandler;)V

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    if-eqz p3, :cond_0

    array-length v1, p3

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;->getMatchLength()I

    move-result v1

    aput v1, p3, v2

    :cond_0
    invoke-virtual {v0}, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;->getMatches()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public get(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/TextTrieMap;->get(Ljava/lang/CharSequence;I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "TV;)",
            "Landroid/icu/impl/TextTrieMap",
            "<TV;>;"
        }
    .end annotation

    new-instance v0, Landroid/icu/impl/TextTrieMap$CharIterator;

    iget-boolean v1, p0, Landroid/icu/impl/TextTrieMap;->_ignoreCase:Z

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Landroid/icu/impl/TextTrieMap$CharIterator;-><init>(Ljava/lang/CharSequence;IZ)V

    iget-object v1, p0, Landroid/icu/impl/TextTrieMap;->_root:Landroid/icu/impl/TextTrieMap$Node;

    invoke-virtual {v1, v0, p2}, Landroid/icu/impl/TextTrieMap$Node;->add(Landroid/icu/impl/TextTrieMap$CharIterator;Ljava/lang/Object;)V

    return-object p0
.end method
