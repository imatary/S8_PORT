.class public final Landroid/icu/text/RuleBasedCollator;
.super Landroid/icu/text/Collator;
.source "RuleBasedCollator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RuleBasedCollator$CollationBuffer;,
        Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;,
        Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;,
        Landroid/icu/text/RuleBasedCollator$NFDIterator;,
        Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private actualLocaleIsSameAsValid:Z

.field private collationBuffer:Landroid/icu/text/RuleBasedCollator$CollationBuffer;

.field data:Landroid/icu/impl/coll/CollationData;

.field private frozenLock:Ljava/util/concurrent/locks/Lock;

.field settings:Landroid/icu/impl/coll/SharedObject$Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/coll/SharedObject$Reference",
            "<",
            "Landroid/icu/impl/coll/CollationSettings;",
            ">;"
        }
    .end annotation
.end field

.field tailoring:Landroid/icu/impl/coll/CollationTailoring;

.field private validLocale:Landroid/icu/util/ULocale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/text/RuleBasedCollator;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Landroid/icu/impl/coll/CollationTailoring;Landroid/icu/util/ULocale;)V
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/Collator;-><init>()V

    iget-object v0, p1, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v0, p1, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->clone()Landroid/icu/impl/coll/SharedObject$Reference;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    iput-object p1, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    iput-object p2, p0, Landroid/icu/text/RuleBasedCollator;->validLocale:Landroid/icu/util/ULocale;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/RuleBasedCollator;->actualLocaleIsSameAsValid:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Landroid/icu/text/Collator;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Collation rules can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator;->validLocale:Landroid/icu/util/ULocale;

    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedCollator;->internalBuildTailoring(Ljava/lang/String;)V

    return-void
.end method

.method private adoptTailoring(Landroid/icu/impl/coll/CollationTailoring;)V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Landroid/icu/text/RuleBasedCollator;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v0, p1, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->clone()Landroid/icu/impl/coll/SharedObject$Reference;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    iput-object p1, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    iget-object v0, p1, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator;->validLocale:Landroid/icu/util/ULocale;

    iput-boolean v1, p0, Landroid/icu/text/RuleBasedCollator;->actualLocaleIsSameAsValid:Z

    return-void
.end method

.method private checkNotFrozen()V
    .locals 2

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify frozen RuleBasedCollator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static final compareNFDIter(Landroid/icu/impl/Normalizer2Impl;Landroid/icu/text/RuleBasedCollator$NFDIterator;Landroid/icu/text/RuleBasedCollator$NFDIterator;)I
    .locals 4

    const v3, 0xfffe

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {p1}, Landroid/icu/text/RuleBasedCollator$NFDIterator;->nextCodePoint()I

    move-result v0

    invoke-virtual {p2}, Landroid/icu/text/RuleBasedCollator$NFDIterator;->nextCodePoint()I

    move-result v1

    if-ne v0, v1, :cond_1

    if-gez v0, :cond_0

    return v2

    :cond_1
    if-gez v0, :cond_2

    const/4 v0, -0x2

    :goto_0
    if-gez v1, :cond_4

    const/4 v1, -0x2

    :goto_1
    if-ge v0, v1, :cond_6

    const/4 v2, -0x1

    return v2

    :cond_2
    if-ne v0, v3, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p0, v0}, Landroid/icu/text/RuleBasedCollator$NFDIterator;->nextDecomposedCodePoint(Landroid/icu/impl/Normalizer2Impl;I)I

    move-result v0

    goto :goto_0

    :cond_4
    if-ne v1, v3, :cond_5

    const/4 v1, -0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p2, p0, v1}, Landroid/icu/text/RuleBasedCollator$NFDIterator;->nextDecomposedCodePoint(Landroid/icu/impl/Normalizer2Impl;I)I

    move-result v1

    goto :goto_1

    :cond_6
    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    return v2
.end method

.method private final getCollationBuffer()Landroid/icu/text/RuleBasedCollator$CollationBuffer;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->frozenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->collationBuffer:Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->collationBuffer:Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    if-nez v0, :cond_0

    new-instance v0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RuleBasedCollator$CollationBuffer;-><init>(Landroid/icu/impl/coll/CollationData;Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator;->collationBuffer:Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    goto :goto_0
.end method

.method private getCollationKey(Ljava/lang/String;Landroid/icu/text/RuleBasedCollator$CollationBuffer;)Landroid/icu/text/CollationKey;
    .locals 2

    iget-object v0, p2, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rawCollationKey:Landroid/icu/text/RawCollationKey;

    invoke-direct {p0, p1, v0, p2}, Landroid/icu/text/RuleBasedCollator;->getRawCollationKey(Ljava/lang/CharSequence;Landroid/icu/text/RawCollationKey;Landroid/icu/text/RuleBasedCollator$CollationBuffer;)Landroid/icu/text/RawCollationKey;

    move-result-object v0

    iput-object v0, p2, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rawCollationKey:Landroid/icu/text/RawCollationKey;

    new-instance v0, Landroid/icu/text/CollationKey;

    iget-object v1, p2, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rawCollationKey:Landroid/icu/text/RawCollationKey;

    invoke-direct {v0, p1, v1}, Landroid/icu/text/CollationKey;-><init>(Ljava/lang/String;Landroid/icu/text/RawCollationKey;)V

    return-object v0
.end method

.method private final getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    return-object v0
.end method

.method private final getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->copyOnWrite()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    return-object v0
.end method

.method private getRawCollationKey(Ljava/lang/CharSequence;Landroid/icu/text/RawCollationKey;Landroid/icu/text/RuleBasedCollator$CollationBuffer;)Landroid/icu/text/RawCollationKey;
    .locals 2

    if-nez p2, :cond_1

    new-instance p2, Landroid/icu/text/RawCollationKey;

    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedCollator;->simpleKeyLengthEstimate(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-direct {p2, v1}, Landroid/icu/text/RawCollationKey;-><init>(I)V

    :cond_0
    :goto_0
    new-instance v0, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;

    invoke-direct {v0, p2}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;-><init>(Landroid/icu/text/RawCollationKey;)V

    invoke-direct {p0, p1, v0, p3}, Landroid/icu/text/RuleBasedCollator;->writeSortKey(Ljava/lang/CharSequence;Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    invoke-virtual {v0}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->NumberOfBytesAppended()I

    move-result v1

    iput v1, p2, Landroid/icu/text/RawCollationKey;->size:I

    return-object p2

    :cond_1
    iget-object v1, p2, Landroid/icu/text/RawCollationKey;->bytes:[B

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedCollator;->simpleKeyLengthEstimate(Ljava/lang/CharSequence;)I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p2, Landroid/icu/text/RawCollationKey;->bytes:[B

    goto :goto_0
.end method

.method private final initMaxExpansions()V
    .locals 3

    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->maxExpansions:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    iget-object v2, v2, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    invoke-static {v2}, Landroid/icu/text/CollationElementIterator;->computeMaxExpansions(Landroid/icu/impl/coll/CollationData;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Landroid/icu/impl/coll/CollationTailoring;->maxExpansions:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private final internalBuildTailoring(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Landroid/icu/impl/coll/CollationRoot;->getRoot()Landroid/icu/impl/coll/CollationTailoring;

    move-result-object v0

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Landroid/icu/impl/ClassLoaderUtil;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v3

    :try_start_0
    const-string/jumbo v7, "android.icu.impl.coll.CollationBuilder"

    invoke-virtual {v3, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Landroid/icu/impl/coll/CollationTailoring;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v2, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v7, "parseAndBuild"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v5, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/impl/coll/CollationTailoring;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    invoke-direct {p0, v6}, Landroid/icu/text/RuleBasedCollator;->adoptTailoring(Landroid/icu/impl/coll/CollationTailoring;)V

    return-void

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v7

    check-cast v7, Ljava/lang/Exception;

    throw v7
.end method

.method private internalSetVariableTop(J)V
    .locals 9

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v4}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/coll/CollationSettings;

    iget-wide v6, v4, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    cmp-long v4, p1, v6

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v4, p1, p2}, Landroid/icu/impl/coll/CollationData;->getGroupForPrimary(J)I

    move-result v0

    const/16 v4, 0x1000

    if-lt v0, v4, :cond_0

    const/16 v4, 0x1003

    if-ge v4, v0, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "The variable top must be a primary weight in the space/punctuation/symbols/currency symbols range"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v4, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v4, v0}, Landroid/icu/impl/coll/CollationData;->getLastPrimaryForGroup(I)J

    move-result-wide v2

    sget-boolean v4, Landroid/icu/text/RuleBasedCollator;->-assertionsDisabled:Z

    if-nez v4, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-eqz v4, :cond_2

    cmp-long v4, v2, p1

    if-ltz v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_2
    move v4, v5

    goto :goto_0

    :cond_3
    move-wide p1, v2

    iget-object v4, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v4}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/coll/CollationSettings;

    iget-wide v4, v4, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v1

    add-int/lit16 v4, v0, -0x1000

    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v5

    iget v5, v5, Landroid/icu/impl/coll/CollationSettings;->options:I

    invoke-virtual {v1, v4, v5}, Landroid/icu/impl/coll/CollationSettings;->setMaxVariable(II)V

    iput-wide v2, v1, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    :cond_4
    return-void
.end method

.method private final releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V
    .locals 1

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->frozenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_0
    return-void
.end method

.method private setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V
    .locals 2

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v1, p1, Landroid/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    invoke-static {v0, p1, v1}, Landroid/icu/impl/coll/CollationFastLatin;->getOptions(Landroid/icu/impl/coll/CollationData;Landroid/icu/impl/coll/CollationSettings;[C)I

    move-result v0

    iput v0, p1, Landroid/icu/impl/coll/CollationSettings;->fastLatinOptions:I

    return-void
.end method

.method private simpleKeyLengthEstimate(Ljava/lang/CharSequence;)I
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private writeIdenticalLevel(Ljava/lang/CharSequence;Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v7, v1, v3}, Landroid/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    move-result v2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->Append(I)V

    invoke-static {p2}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->-get0(Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;)Landroid/icu/text/RawCollationKey;

    move-result-object v0

    invoke-virtual {p2}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->NumberOfBytesAppended()I

    move-result v1

    iput v1, v0, Landroid/icu/text/RawCollationKey;->size:I

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    invoke-static {p2}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->-get0(Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;)Landroid/icu/text/RawCollationKey;

    move-result-object v0

    invoke-static {v6, p1, v7, v2, v0}, Landroid/icu/impl/coll/BOCSU;->writeIdenticalLevelRun(ILjava/lang/CharSequence;IILandroid/icu/util/ByteArrayWrapper;)I

    move-result v6

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int v5, v0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-static {p2}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->-get0(Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;)Landroid/icu/text/RawCollationKey;

    move-result-object v1

    invoke-static {v6, v4, v7, v0, v1}, Landroid/icu/impl/coll/BOCSU;->writeIdenticalLevelRun(ILjava/lang/CharSequence;IILandroid/icu/util/ByteArrayWrapper;)I

    :cond_1
    invoke-static {p2}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->-get0(Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;)Landroid/icu/text/RawCollationKey;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/text/RawCollationKey;->bytes:[B

    invoke-static {p2}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->-get0(Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;)Landroid/icu/text/RawCollationKey;

    move-result-object v1

    iget v1, v1, Landroid/icu/text/RawCollationKey;->size:I

    invoke-virtual {p2, v0, v1}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->setBufferAndAppended([BI)V

    return-void
.end method

.method private writeSortKey(Ljava/lang/CharSequence;Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->isNumeric()Z

    move-result v7

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p3, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    invoke-virtual {v0, v7, p1, v8}, Landroid/icu/impl/coll/UTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    iget-object v0, p3, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v1, v1, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/coll/CollationSettings;

    sget-object v5, Landroid/icu/impl/coll/CollationKeys;->SIMPLE_LEVEL_FALLBACK:Landroid/icu/impl/coll/CollationKeys$LevelCallback;

    move-object v3, p2

    move v6, v4

    invoke-static/range {v0 .. v6}, Landroid/icu/impl/coll/CollationKeys;->writeSortKeyUpToQuaternary(Landroid/icu/impl/coll/CollationIterator;[ZLandroid/icu/impl/coll/CollationSettings;Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;ILandroid/icu/impl/coll/CollationKeys$LevelCallback;Z)V

    :goto_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->getStrength()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/icu/text/RuleBasedCollator;->writeIdenticalLevel(Ljava/lang/CharSequence;Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;)V

    :cond_0
    invoke-virtual {p2, v8}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->Append(I)V

    return-void

    :cond_1
    iget-object v0, p3, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    invoke-virtual {v0, v7, p1, v8}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    iget-object v0, p3, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v1, v1, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/coll/CollationSettings;

    sget-object v5, Landroid/icu/impl/coll/CollationKeys;->SIMPLE_LEVEL_FALLBACK:Landroid/icu/impl/coll/CollationKeys$LevelCallback;

    move-object v3, p2

    move v6, v4

    invoke-static/range {v0 .. v6}, Landroid/icu/impl/coll/CollationKeys;->writeSortKeyUpToQuaternary(Landroid/icu/impl/coll/CollationIterator;[ZLandroid/icu/impl/coll/CollationSettings;Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;ILandroid/icu/impl/coll/CollationKeys$LevelCallback;Z)V

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->cloneAsThawed()Landroid/icu/text/RuleBasedCollator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cloneAsThawed()Landroid/icu/text/Collator;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->cloneAsThawed()Landroid/icu/text/RuleBasedCollator;

    move-result-object v0

    return-object v0
.end method

.method public cloneAsThawed()Landroid/icu/text/RuleBasedCollator;
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    invoke-super {p0}, Landroid/icu/text/Collator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/RuleBasedCollator;

    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject$Reference;->clone()Landroid/icu/impl/coll/SharedObject$Reference;

    move-result-object v2

    iput-object v2, v1, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/icu/text/RuleBasedCollator;->collationBuffer:Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/icu/text/RuleBasedCollator;->frozenLock:Ljava/util/concurrent/locks/Lock;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    return-object v3
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/RuleBasedCollator;->doCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method protected doCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v4, 0x17f

    const/4 v3, 0x0

    if-ne p1, p2, :cond_0

    return v3

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v5, v0, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v5, v0, :cond_2

    return v3

    :cond_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eq v5, v0, :cond_2

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-interface {p2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v0, v1, :cond_a

    :cond_2
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v10

    check-cast v10, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v10}, Landroid/icu/impl/coll/CollationSettings;->isNumeric()Z

    move-result v8

    if-lez v5, :cond_5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eq v5, v0, :cond_3

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1, v8}, Landroid/icu/impl/coll/CollationData;->isUnsafeBackward(IZ)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eq v5, v0, :cond_5

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-interface {p2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1, v8}, Landroid/icu/impl/coll/CollationData;->isUnsafeBackward(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    add-int/lit8 v5, v5, -0x1

    if-lez v5, :cond_5

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1, v8}, Landroid/icu/impl/coll/CollationData;->isUnsafeBackward(IZ)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_5
    iget v2, v10, Landroid/icu/impl/coll/CollationSettings;->fastLatinOptions:I

    if-ltz v2, :cond_b

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eq v5, v0, :cond_6

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-gt v0, v4, :cond_b

    :cond_6
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eq v5, v0, :cond_7

    invoke-interface {p2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-gt v0, v4, :cond_b

    :cond_7
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    iget-object v1, v10, Landroid/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Landroid/icu/impl/coll/CollationFastLatin;->compareUTF16([C[CILjava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v9

    :goto_1
    const/4 v0, -0x2

    if-ne v9, v0, :cond_8

    const/4 v6, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getCollationBuffer()Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    move-result-object v6

    invoke-virtual {v10}, Landroid/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v6, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    invoke-virtual {v0, v8, p1, v5}, Landroid/icu/impl/coll/UTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    iget-object v0, v6, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    invoke-virtual {v0, v8, p2, v5}, Landroid/icu/impl/coll/UTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    iget-object v0, v6, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    iget-object v1, v6, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    invoke-static {v0, v1, v10}, Landroid/icu/impl/coll/CollationCompare;->compareUpToQuaternary(Landroid/icu/impl/coll/CollationIterator;Landroid/icu/impl/coll/CollationIterator;Landroid/icu/impl/coll/CollationSettings;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    :goto_2
    invoke-direct {p0, v6}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    :cond_8
    if-nez v9, :cond_9

    invoke-virtual {v10}, Landroid/icu/impl/coll/CollationSettings;->getStrength()I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_d

    :cond_9
    return v9

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v9, -0x2

    goto :goto_1

    :cond_c
    :try_start_1
    iget-object v0, v6, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    invoke-virtual {v0, v8, p1, v5}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    iget-object v0, v6, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    invoke-virtual {v0, v8, p2, v5}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    iget-object v0, v6, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    iget-object v1, v6, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    invoke-static {v0, v1, v10}, Landroid/icu/impl/coll/CollationCompare;->compareUpToQuaternary(Landroid/icu/impl/coll/CollationIterator;Landroid/icu/impl/coll/CollationIterator;Landroid/icu/impl/coll/CollationSettings;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-direct {p0, v6}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    throw v0

    :cond_d
    const/4 v6, 0x0

    :try_start_2
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getCollationBuffer()Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    move-result-object v6

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v7, v0, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v10}, Landroid/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v6, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;

    invoke-virtual {v0, p1, v5}, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->setText(Ljava/lang/CharSequence;I)V

    iget-object v0, v6, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;

    invoke-virtual {v0, p2, v5}, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->setText(Ljava/lang/CharSequence;I)V

    iget-object v0, v6, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;

    iget-object v1, v6, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;

    invoke-static {v7, v0, v1}, Landroid/icu/text/RuleBasedCollator;->compareNFDIter(Landroid/icu/impl/Normalizer2Impl;Landroid/icu/text/RuleBasedCollator$NFDIterator;Landroid/icu/text/RuleBasedCollator$NFDIterator;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    invoke-direct {p0, v6}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    return v0

    :cond_e
    :try_start_3
    iget-object v0, v6, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    invoke-virtual {v0, v7, p1, v5}, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->setText(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/CharSequence;I)V

    iget-object v0, v6, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightFCDUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    invoke-virtual {v0, v7, p2, v5}, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->setText(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/CharSequence;I)V

    iget-object v0, v6, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    iget-object v1, v6, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightFCDUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    invoke-static {v7, v0, v1}, Landroid/icu/text/RuleBasedCollator;->compareNFDIter(Landroid/icu/impl/Normalizer2Impl;Landroid/icu/text/RuleBasedCollator$NFDIterator;Landroid/icu/text/RuleBasedCollator$NFDIterator;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    invoke-direct {p0, v6}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    return v0

    :catchall_1
    move-exception v0

    invoke-direct {p0, v6}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne p0, p1, :cond_0

    return v8

    :cond_0
    invoke-super {p0, p1}, Landroid/icu/text/Collator;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    return v9

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/icu/text/RuleBasedCollator;

    iget-object v7, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v7}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v7

    check-cast v7, Landroid/icu/impl/coll/CollationSettings;

    iget-object v10, v0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v10}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/icu/impl/coll/CollationSettings;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    return v9

    :cond_2
    iget-object v7, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v10, v0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    if-ne v7, v10, :cond_3

    return v8

    :cond_3
    iget-object v7, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v7, v7, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    if-nez v7, :cond_4

    const/4 v5, 0x1

    :goto_0
    iget-object v7, v0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v7, v7, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    if-nez v7, :cond_5

    const/4 v1, 0x1

    :goto_1
    sget-boolean v7, Landroid/icu/text/RuleBasedCollator;->-assertionsDisabled:Z

    if-nez v7, :cond_7

    if-eqz v5, :cond_6

    if-eqz v1, :cond_6

    move v7, v9

    :goto_2
    if-nez v7, :cond_7

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    move v7, v8

    goto :goto_2

    :cond_7
    if-eq v5, v1, :cond_8

    return v9

    :cond_8
    iget-object v7, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    invoke-virtual {v7}, Landroid/icu/impl/coll/CollationTailoring;->getRules()Ljava/lang/String;

    move-result-object v4

    iget-object v7, v0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    invoke-virtual {v7}, Landroid/icu/impl/coll/CollationTailoring;->getRules()Ljava/lang/String;

    move-result-object v2

    if-nez v5, :cond_9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_b

    :cond_9
    if-nez v1, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_b

    :cond_a
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    return v8

    :cond_b
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->getTailoredSet()Landroid/icu/text/UnicodeSet;

    move-result-object v6

    invoke-virtual {v0}, Landroid/icu/text/RuleBasedCollator;->getTailoredSet()Landroid/icu/text/UnicodeSet;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/icu/text/UnicodeSet;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    return v9

    :cond_c
    return v8
.end method

.method public freeze()Landroid/icu/text/Collator;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator;->frozenLock:Ljava/util/concurrent/locks/Lock;

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->collationBuffer:Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    if-nez v0, :cond_0

    new-instance v0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RuleBasedCollator$CollationBuffer;-><init>(Landroid/icu/impl/coll/CollationData;Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator;->collationBuffer:Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    :cond_0
    return-object p0
.end method

.method public getCollationElementIterator(Landroid/icu/text/UCharacterIterator;)Landroid/icu/text/CollationElementIterator;
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->initMaxExpansions()V

    new-instance v0, Landroid/icu/text/CollationElementIterator;

    invoke-direct {v0, p1, p0}, Landroid/icu/text/CollationElementIterator;-><init>(Landroid/icu/text/UCharacterIterator;Landroid/icu/text/RuleBasedCollator;)V

    return-object v0
.end method

.method public getCollationElementIterator(Ljava/lang/String;)Landroid/icu/text/CollationElementIterator;
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->initMaxExpansions()V

    new-instance v0, Landroid/icu/text/CollationElementIterator;

    invoke-direct {v0, p1, p0}, Landroid/icu/text/CollationElementIterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedCollator;)V

    return-object v0
.end method

.method public getCollationElementIterator(Ljava/text/CharacterIterator;)Landroid/icu/text/CollationElementIterator;
    .locals 2

    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->initMaxExpansions()V

    invoke-interface {p1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/CharacterIterator;

    new-instance v1, Landroid/icu/text/CollationElementIterator;

    invoke-direct {v1, v0, p0}, Landroid/icu/text/CollationElementIterator;-><init>(Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;)V

    return-object v1
.end method

.method public getCollationKey(Ljava/lang/String;)Landroid/icu/text/CollationKey;
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getCollationBuffer()Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/RuleBasedCollator;->getCollationKey(Ljava/lang/String;Landroid/icu/text/RuleBasedCollator$CollationBuffer;)Landroid/icu/text/CollationKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    throw v1
.end method

.method public getContractionsAndExpansions(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    :cond_1
    new-instance v0, Landroid/icu/impl/coll/ContractionsAndExpansions;

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/icu/impl/coll/ContractionsAndExpansions;-><init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;Z)V

    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/ContractionsAndExpansions;->forData(Landroid/icu/impl/coll/CollationData;)V

    return-void
.end method

.method public getDecomposition()I
    .locals 1

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    iget v0, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x10

    goto :goto_0
.end method

.method public getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;
    .locals 3

    sget-object v0, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Landroid/icu/text/RuleBasedCollator;->actualLocaleIsSameAsValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->validLocale:Landroid/icu/util/ULocale;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->validLocale:Landroid/icu/util/ULocale;

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown ULocale.Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMaxVariable()I
    .locals 1

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->getMaxVariable()I

    move-result v0

    add-int/lit16 v0, v0, 0x1000

    return v0
.end method

.method public getNumericCollation()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    iget v0, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getRawCollationKey(Ljava/lang/String;Landroid/icu/text/RawCollationKey;)Landroid/icu/text/RawCollationKey;
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getCollationBuffer()Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/RuleBasedCollator;->getRawCollationKey(Ljava/lang/CharSequence;Landroid/icu/text/RawCollationKey;Landroid/icu/text/RuleBasedCollator$CollationBuffer;)Landroid/icu/text/RawCollationKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    throw v1
.end method

.method public getReorderCodes()[I
    .locals 1

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getRules()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationTailoring;->getRules()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRules(Z)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationTailoring;->getRules()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/icu/impl/coll/CollationLoader;->getRootRules()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationTailoring;->getRules()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStrength()I
    .locals 1

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->getStrength()I

    move-result v0

    return v0
.end method

.method public getTailoredSet()Landroid/icu/text/UnicodeSet;
    .locals 3

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v1, v1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/icu/impl/coll/TailoredSet;

    invoke-direct {v1, v0}, Landroid/icu/impl/coll/TailoredSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v1, v2}, Landroid/icu/impl/coll/TailoredSet;->forData(Landroid/icu/impl/coll/CollationData;)V

    :cond_0
    return-object v0
.end method

.method public getUCAVersion()Landroid/icu/util/VersionInfo;
    .locals 5

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->getVersion()Landroid/icu/util/VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/VersionInfo;->getMinor()I

    move-result v1

    shr-int/lit8 v1, v1, 0x3

    invoke-virtual {v0}, Landroid/icu/util/VersionInfo;->getMinor()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    invoke-virtual {v0}, Landroid/icu/util/VersionInfo;->getMilli()I

    move-result v3

    shr-int/lit8 v3, v3, 0x6

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v1

    return-object v1
.end method

.method public getVariableTop()I
    .locals 2

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    iget-wide v0, v0, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    long-to-int v0, v0

    return v0
.end method

.method public getVersion()Landroid/icu/util/VersionInfo;
    .locals 6

    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    iget v1, v2, Landroid/icu/impl/coll/CollationTailoring;->version:I

    sget-object v2, Landroid/icu/util/VersionInfo;->UCOL_RUNTIME_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v2}, Landroid/icu/util/VersionInfo;->getMajor()I

    move-result v0

    ushr-int/lit8 v2, v1, 0x18

    shl-int/lit8 v3, v0, 0x4

    add-int/2addr v2, v3

    shr-int/lit8 v3, v0, 0x4

    add-int/2addr v2, v3

    shr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v5, v1, 0xff

    invoke-static {v2, v3, v4, v5}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v2

    return-object v2
.end method

.method public hashCode()I
    .locals 5

    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v3}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v3}, Landroid/icu/impl/coll/CollationSettings;->hashCode()I

    move-result v0

    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v3, v3, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    if-nez v3, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->getTailoredSet()Landroid/icu/text/UnicodeSet;

    move-result-object v2

    new-instance v1, Landroid/icu/text/UnicodeSetIterator;

    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    :goto_0
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v1, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    sget v4, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget v4, v1, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    invoke-virtual {v3, v4}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v3

    xor-int/2addr v0, v3

    goto :goto_0

    :cond_1
    return v0
.end method

.method internalAddContractions(ILandroid/icu/text/UnicodeSet;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/icu/impl/coll/ContractionsAndExpansions;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v2, v2, v1}, Landroid/icu/impl/coll/ContractionsAndExpansions;-><init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;Z)V

    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/coll/ContractionsAndExpansions;->forCodePoint(Landroid/icu/impl/coll/CollationData;I)V

    return-void
.end method

.method public internalGetCEs(Ljava/lang/CharSequence;)[J
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getCollationBuffer()Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    move-result-object v0

    iget-object v5, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v5}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v5

    check-cast v5, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v5}, Landroid/icu/impl/coll/CollationSettings;->isNumeric()Z

    move-result v4

    iget-object v5, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v5}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v5

    check-cast v5, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v5}, Landroid/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    const/4 v7, 0x0

    invoke-virtual {v5, v4, p1, v7}, Landroid/icu/impl/coll/UTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    iget-object v2, v0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    :goto_0
    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationIterator;->fetchCEs()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    sget-boolean v5, Landroid/icu/text/RuleBasedCollator;->-assertionsDisabled:Z

    if-nez v5, :cond_2

    if-ltz v3, :cond_1

    invoke-virtual {v2, v3}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v8

    const-wide v10, 0x101000100L

    cmp-long v5, v8, v10

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v5

    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    throw v5

    :cond_0
    :try_start_1
    iget-object v5, v0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    const/4 v7, 0x0

    invoke-virtual {v5, v4, p1, v7}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    iget-object v2, v0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1

    :cond_2
    new-array v1, v3, [J

    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationIterator;->getCEs()[J

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v1, v7, v3}, Ljava/lang/System;->arraycopy([JI[JII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    return-object v1
.end method

.method public isAlternateHandlingShifted()Z
    .locals 1

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->getAlternateHandling()Z

    move-result v0

    return v0
.end method

.method public isCaseLevel()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    iget v0, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isFrenchCollation()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    iget v0, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isFrozen()Z
    .locals 1

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->frozenLock:Ljava/util/concurrent/locks/Lock;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHiraganaQuaternary()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isLowerCaseFirst()Z
    .locals 2

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->getCaseFirst()I

    move-result v0

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isUnsafe(I)Z
    .locals 2

    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->isNumeric()Z

    move-result v0

    invoke-virtual {v1, p1, v0}, Landroid/icu/impl/coll/CollationData;->isUnsafeBackward(IZ)Z

    move-result v0

    return v0
.end method

.method public isUpperCaseFirst()Z
    .locals 2

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->getCaseFirst()I

    move-result v0

    const/16 v1, 0x300

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlternateHandlingDefault()V
    .locals 3

    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v2

    if-ne v2, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v1

    iget v2, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    invoke-virtual {v1, v2}, Landroid/icu/impl/coll/CollationSettings;->setAlternateHandlingDefault(I)V

    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setAlternateHandlingShifted(Z)V
    .locals 2

    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isAlternateHandlingShifted()Z

    move-result v1

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationSettings;->setAlternateHandlingShifted(Z)V

    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public final setCaseFirstDefault()V
    .locals 3

    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v2

    if-ne v2, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v1

    iget v2, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    invoke-virtual {v1, v2}, Landroid/icu/impl/coll/CollationSettings;->setCaseFirstDefault(I)V

    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setCaseLevel(Z)V
    .locals 2

    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isCaseLevel()Z

    move-result v1

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setCaseLevelDefault()V
    .locals 4

    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v2

    if-ne v2, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v1

    iget v2, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    const/16 v3, 0x400

    invoke-virtual {v1, v3, v2}, Landroid/icu/impl/coll/CollationSettings;->setFlagDefault(II)V

    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setDecomposition(I)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    packed-switch p1, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Wrong decomposition mode."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v2, v3}, Landroid/icu/impl/coll/CollationSettings;->getFlag(I)Z

    move-result v2

    if-ne v0, v2, :cond_0

    return-void

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDecompositionDefault()V
    .locals 4

    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v2

    if-ne v2, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v1

    iget v2, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/icu/impl/coll/CollationSettings;->setFlagDefault(II)V

    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setFrenchCollation(Z)V
    .locals 2

    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isFrenchCollation()Z

    move-result v1

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setFrenchCollationDefault()V
    .locals 4

    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v2

    if-ne v2, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v1

    iget v2, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    const/16 v3, 0x800

    invoke-virtual {v1, v3, v2}, Landroid/icu/impl/coll/CollationSettings;->setFlagDefault(II)V

    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setHiraganaQuaternary(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    return-void
.end method

.method public setHiraganaQuaternaryDefault()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    return-void
.end method

.method setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Landroid/icu/text/RuleBasedCollator;->-assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    move v3, v1

    :goto_0
    if-nez p2, :cond_1

    move v0, v1

    :goto_1
    if-ne v3, v0, :cond_2

    move v0, v1

    :goto_2
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    invoke-static {p2, v0}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Landroid/icu/text/RuleBasedCollator;->actualLocaleIsSameAsValid:Z

    :goto_3
    iput-object p1, p0, Landroid/icu/text/RuleBasedCollator;->validLocale:Landroid/icu/util/ULocale;

    return-void

    :cond_4
    sget-boolean v0, Landroid/icu/text/RuleBasedCollator;->-assertionsDisabled:Z

    if-nez v0, :cond_5

    invoke-static {p2, p1}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedCollator;->actualLocaleIsSameAsValid:Z

    goto :goto_3
.end method

.method public setLowerCaseFirst(Z)V
    .locals 2

    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isLowerCaseFirst()Z

    move-result v1

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    if-eqz p1, :cond_1

    const/16 v1, 0x200

    :goto_0
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationSettings;->setCaseFirst(I)V

    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic setMaxVariable(I)Landroid/icu/text/Collator;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/icu/text/RuleBasedCollator;->setMaxVariable(I)Landroid/icu/text/RuleBasedCollator;

    move-result-object v0

    return-object v0
.end method

.method public setMaxVariable(I)Landroid/icu/text/RuleBasedCollator;
    .locals 10

    const/16 v6, 0x1000

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-ne p1, v8, :cond_0

    const/4 v3, -0x1

    :goto_0
    iget-object v6, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v6}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v6

    check-cast v6, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v6}, Landroid/icu/impl/coll/CollationSettings;->getMaxVariable()I

    move-result v1

    if-ne v3, v1, :cond_2

    return-object p0

    :cond_0
    if-gt v6, p1, :cond_1

    const/16 v6, 0x1003

    if-gt p1, v6, :cond_1

    add-int/lit16 v3, p1, -0x1000

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "illegal max variable group "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    iget-object v6, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v6}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v6

    if-ne v6, v0, :cond_3

    if-gez v3, :cond_3

    return-object p0

    :cond_3
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v2

    if-ne p1, v8, :cond_4

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->getMaxVariable()I

    move-result v6

    add-int/lit16 p1, v6, 0x1000

    :cond_4
    iget-object v6, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v6, p1}, Landroid/icu/impl/coll/CollationData;->getLastPrimaryForGroup(I)J

    move-result-wide v4

    sget-boolean v6, Landroid/icu/text/RuleBasedCollator;->-assertionsDisabled:Z

    if-nez v6, :cond_6

    const-wide/16 v8, 0x0

    cmp-long v6, v4, v8

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    :goto_1
    if-nez v6, :cond_6

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_5
    move v6, v7

    goto :goto_1

    :cond_6
    iget v6, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    invoke-virtual {v2, v3, v6}, Landroid/icu/impl/coll/CollationSettings;->setMaxVariable(II)V

    iput-wide v4, v2, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    invoke-direct {p0, v2}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    return-object p0
.end method

.method public setNumericCollation(Z)V
    .locals 2

    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->getNumericCollation()Z

    move-result v1

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setNumericCollationDefault()V
    .locals 4

    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v2

    if-ne v2, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v1

    iget v2, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/icu/impl/coll/CollationSettings;->setFlagDefault(II)V

    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public varargs setReorderCodes([I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    if-eqz p1, :cond_2

    array-length v1, p1

    :goto_0
    if-ne v1, v6, :cond_0

    aget v3, p1, v4

    const/16 v5, 0x67

    if-ne v3, v5, :cond_0

    const/4 v1, 0x0

    :cond_0
    if-nez v1, :cond_3

    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v3}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/coll/CollationSettings;

    iget-object v3, v3, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    array-length v3, v3

    if-nez v3, :cond_4

    :cond_1
    return-void

    :cond_2
    move v1, v4

    goto :goto_0

    :cond_3
    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v3}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/coll/CollationSettings;

    iget-object v3, v3, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_4
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    if-ne v1, v6, :cond_6

    aget v3, p1, v4

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v3}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v3

    if-eq v3, v0, :cond_5

    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/icu/impl/coll/CollationSettings;->copyReorderingFrom(Landroid/icu/impl/coll/CollationSettings;)V

    invoke-direct {p0, v2}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    :cond_5
    return-void

    :cond_6
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v2

    if-nez v1, :cond_7

    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationSettings;->resetReordering()V

    :goto_1
    invoke-direct {p0, v2}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    return-void

    :cond_7
    iget-object v4, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    invoke-virtual {v2, v4, v3}, Landroid/icu/impl/coll/CollationSettings;->setReordering(Landroid/icu/impl/coll/CollationData;[I)V

    goto :goto_1
.end method

.method public setStrength(I)V
    .locals 2

    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->getStrength()I

    move-result v1

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationSettings;->setStrength(I)V

    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setStrengthDefault()V
    .locals 3

    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v2

    if-ne v2, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v1

    iget v2, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    invoke-virtual {v1, v2}, Landroid/icu/impl/coll/CollationSettings;->setStrengthDefault(I)V

    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    return-void
.end method

.method public setUpperCaseFirst(Z)V
    .locals 2

    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isUpperCaseFirst()Z

    move-result v1

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    if-eqz p1, :cond_1

    const/16 v1, 0x300

    :goto_0
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationSettings;->setCaseFirst(I)V

    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setVariableTop(Ljava/lang/String;)I
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v10, 0x101000100L

    const/4 v8, 0x0

    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Variable top argument string can not be null or zero in length."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    iget-object v7, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v7}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v7

    check-cast v7, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v7}, Landroid/icu/impl/coll/CollationSettings;->isNumeric()Z

    move-result v6

    iget-object v7, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v7}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v7

    check-cast v7, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v7}, Landroid/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v5, Landroid/icu/impl/coll/UTF16CollationIterator;

    iget-object v7, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-direct {v5, v7, v6, p1, v8}, Landroid/icu/impl/coll/UTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V

    invoke-virtual {v5}, Landroid/icu/impl/coll/UTF16CollationIterator;->nextCE()J

    move-result-wide v0

    invoke-virtual {v5}, Landroid/icu/impl/coll/UTF16CollationIterator;->nextCE()J

    move-result-wide v2

    :goto_0
    cmp-long v7, v0, v10

    if-eqz v7, :cond_2

    cmp-long v7, v2, v10

    if-eqz v7, :cond_4

    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Variable top argument string must map to exactly one collation element"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3
    new-instance v4, Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    iget-object v7, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-direct {v4, v7, v6, p1, v8}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V

    invoke-virtual {v4}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nextCE()J

    move-result-wide v0

    invoke-virtual {v4}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nextCE()J

    move-result-wide v2

    goto :goto_0

    :cond_4
    const/16 v7, 0x20

    ushr-long v8, v0, v7

    invoke-direct {p0, v8, v9}, Landroid/icu/text/RuleBasedCollator;->internalSetVariableTop(J)V

    iget-object v7, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v7}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v7

    check-cast v7, Landroid/icu/impl/coll/CollationSettings;

    iget-wide v8, v7, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    long-to-int v7, v8

    return v7
.end method

.method public setVariableTop(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Landroid/icu/text/RuleBasedCollator;->internalSetVariableTop(J)V

    return-void
.end method
