.class public final Landroid/icu/text/CanonicalIterator;
.super Ljava/lang/Object;
.source "CanonicalIterator.java"


# static fields
.field private static PROGRESS:Z

.field private static final SET_WITH_NULL_STRING:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static SKIP_ZEROS:Z


# instance fields
.field private transient buffer:Ljava/lang/StringBuilder;

.field private current:[I

.field private done:Z

.field private final nfcImpl:Landroid/icu/impl/Normalizer2Impl;

.field private final nfd:Landroid/icu/text/Normalizer2;

.field private pieces:[[Ljava/lang/String;

.field private source:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Landroid/icu/text/CanonicalIterator;->PROGRESS:Z

    const/4 v0, 0x1

    sput-boolean v0, Landroid/icu/text/CanonicalIterator;->SKIP_ZEROS:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/icu/text/CanonicalIterator;->SET_WITH_NULL_STRING:Ljava/util/Set;

    sget-object v0, Landroid/icu/text/CanonicalIterator;->SET_WITH_NULL_STRING:Ljava/util/Set;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Landroid/icu/text/CanonicalIterator;->buffer:Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v1, v0, Landroid/icu/impl/Norm2AllModes;->decomp:Landroid/icu/impl/Norm2AllModes$DecomposeNormalizer2;

    iput-object v1, p0, Landroid/icu/text/CanonicalIterator;->nfd:Landroid/icu/text/Normalizer2;

    iget-object v1, v0, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v1}, Landroid/icu/impl/Normalizer2Impl;->ensureCanonIterData()Landroid/icu/impl/Normalizer2Impl;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/CanonicalIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {p0, p1}, Landroid/icu/text/CanonicalIterator;->setSource(Ljava/lang/String;)V

    return-void
.end method

.method private extract(ILjava/lang/String;ILjava/lang/StringBuffer;)Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/StringBuffer;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-boolean v7, Landroid/icu/text/CanonicalIterator;->PROGRESS:Z

    if-eqz v7, :cond_0

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " extract: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v7, p0, Landroid/icu/text/CanonicalIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v7, p1}, Landroid/icu/impl/Normalizer2Impl;->getDecomposition(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {p1}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {v1, v7}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v7

    add-int/lit8 v3, v7, 0x0

    const/4 v7, 0x0

    invoke-virtual {p4, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    move v4, p3

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_3

    invoke-static {p2, v4}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_5

    sget-boolean v7, Landroid/icu/text/CanonicalIterator;->PROGRESS:Z

    if-eqz v7, :cond_2

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "  matches: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v3, v7, :cond_4

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v5, 0x1

    :cond_3
    if-nez v5, :cond_7

    const/4 v7, 0x0

    return-object v7

    :cond_4
    invoke-static {v1, v3}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v7

    add-int/2addr v3, v7

    :goto_1
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_0

    :cond_5
    sget-boolean v7, Landroid/icu/text/CanonicalIterator;->PROGRESS:Z

    if-eqz v7, :cond_6

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "  buffer: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    invoke-static {p4, v0}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_7
    sget-boolean v7, Landroid/icu/text/CanonicalIterator;->PROGRESS:Z

    if-eqz v7, :cond_8

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v8, "Matches"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-nez v7, :cond_9

    sget-object v7, Landroid/icu/text/CanonicalIterator;->SET_WITH_NULL_STRING:Ljava/util/Set;

    return-object v7

    :cond_9
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/icu/text/Normalizer;->compare(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x0

    return-object v7

    :cond_a
    invoke-direct {p0, v6}, Landroid/icu/text/CanonicalIterator;->getEquivalents2(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    return-object v7
.end method

.method private getEquivalents(Ljava/lang/String;)[Ljava/lang/String;
    .locals 12

    const/4 v11, 0x0

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1}, Landroid/icu/text/CanonicalIterator;->getEquivalents2(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    sget-boolean v8, Landroid/icu/text/CanonicalIterator;->SKIP_ZEROS:Z

    invoke-static {v4, v8, v5}, Landroid/icu/text/CanonicalIterator;->permute(Ljava/lang/String;ZLjava/util/Set;)V

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, p1, v11}, Landroid/icu/text/Normalizer;->compare(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_3

    sget-boolean v8, Landroid/icu/text/CanonicalIterator;->PROGRESS:Z

    if-eqz v8, :cond_2

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Adding Permutation: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget-boolean v8, Landroid/icu/text/CanonicalIterator;->PROGRESS:Z

    if-eqz v8, :cond_1

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "-Skipping Permutation: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v8

    new-array v1, v8, [Ljava/lang/String;

    invoke-interface {v7, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1
.end method

.method private getEquivalents2(Ljava/lang/String;)Ljava/util/Set;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    sget-boolean v11, Landroid/icu/text/CanonicalIterator;->PROGRESS:Z

    if-eqz v11, :cond_0

    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Adding: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {p1}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v8, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Landroid/icu/text/UnicodeSet;

    invoke-direct {v9}, Landroid/icu/text/UnicodeSet;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v2, v11, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    iget-object v11, p0, Landroid/icu/text/CanonicalIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v11, v0, v9}, Landroid/icu/impl/Normalizer2Impl;->getCanonStartSet(ILandroid/icu/text/UnicodeSet;)Z

    move-result v11

    if-nez v11, :cond_2

    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v11

    add-int/2addr v2, v11

    goto :goto_0

    :cond_2
    new-instance v5, Landroid/icu/text/UnicodeSetIterator;

    invoke-direct {v5, v9}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    :cond_3
    invoke-virtual {v5}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    move-result v11

    if-eqz v11, :cond_1

    iget v1, v5, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    invoke-direct {p0, v1, p1, v2, v10}, Landroid/icu/text/CanonicalIterator;->extract(ILjava/lang/String;ILjava/lang/StringBuffer;)Ljava/util/Set;

    move-result-object v7

    if-eqz v7, :cond_3

    const/4 v11, 0x0

    invoke-virtual {p1, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v1}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v8
.end method

.method public static permute(Ljava/lang/String;ZLjava/util/Set;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v9, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-gt v7, v8, :cond_0

    invoke-static {p0}, Landroid/icu/text/UTF16;->countCodePoint(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    if-gt v7, v8, :cond_0

    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_3

    invoke-static {p0, v2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v1

    if-eqz p1, :cond_2

    if-eqz v2, :cond_2

    invoke-static {v1}, Landroid/icu/lang/UCharacter;->getCombiningClass(I)I

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    invoke-static {v1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v7

    add-int/2addr v2, v7

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Ljava/util/Set;->clear()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1, v6}, Landroid/icu/text/CanonicalIterator;->permute(Ljava/lang/String;ZLjava/util/Set;)V

    invoke-static {p0, v2}, Landroid/icu/text/UTF16;->valueOf(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/CanonicalIterator;->source:Ljava/lang/String;

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    iget-boolean v2, p0, Landroid/icu/text/CanonicalIterator;->done:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    iget-object v2, p0, Landroid/icu/text/CanonicalIterator;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/icu/text/CanonicalIterator;->buffer:Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Landroid/icu/text/CanonicalIterator;->current:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/icu/text/CanonicalIterator;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/CanonicalIterator;->current:[I

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-gez v0, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/icu/text/CanonicalIterator;->done:Z

    :cond_2
    return-object v1

    :cond_3
    iget-object v2, p0, Landroid/icu/text/CanonicalIterator;->current:[I

    aget v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    iget-object v2, p0, Landroid/icu/text/CanonicalIterator;->current:[I

    aget v2, v2, v0

    iget-object v3, p0, Landroid/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    aget-object v3, v3, v0

    array-length v3, v3

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Landroid/icu/text/CanonicalIterator;->current:[I

    aput v5, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/icu/text/CanonicalIterator;->done:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/icu/text/CanonicalIterator;->current:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/CanonicalIterator;->current:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Landroid/icu/text/CanonicalIterator;->nfd:Landroid/icu/text/Normalizer2;

    invoke-virtual {v4, p1}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/icu/text/CanonicalIterator;->source:Ljava/lang/String;

    iput-boolean v7, p0, Landroid/icu/text/CanonicalIterator;->done:Z

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    new-array v4, v5, [[Ljava/lang/String;

    iput-object v4, p0, Landroid/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    new-array v4, v5, [I

    iput-object v4, p0, Landroid/icu/text/CanonicalIterator;->current:[I

    iget-object v4, p0, Landroid/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, ""

    aput-object v6, v5, v7

    aput-object v5, v4, v7

    return-void

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/icu/text/CanonicalIterator;->source:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/icu/text/UTF16;->findOffsetFromCodePoint(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    iget-object v4, p0, Landroid/icu/text/CanonicalIterator;->source:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Landroid/icu/text/CanonicalIterator;->source:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    iget-object v4, p0, Landroid/icu/text/CanonicalIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v4, v0}, Landroid/icu/impl/Normalizer2Impl;->isCanonSegmentStarter(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/icu/text/CanonicalIterator;->source:Ljava/lang/String;

    invoke-virtual {v4, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_0

    :cond_2
    iget-object v4, p0, Landroid/icu/text/CanonicalIterator;->source:Ljava/lang/String;

    invoke-virtual {v4, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [[Ljava/lang/String;

    iput-object v4, p0, Landroid/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    iput-object v4, p0, Landroid/icu/text/CanonicalIterator;->current:[I

    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Landroid/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_4

    sget-boolean v4, Landroid/icu/text/CanonicalIterator;->PROGRESS:Z

    if-eqz v4, :cond_3

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "SEGMENT"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    iget-object v5, p0, Landroid/icu/text/CanonicalIterator;->pieces:[[Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Landroid/icu/text/CanonicalIterator;->getEquivalents(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method
