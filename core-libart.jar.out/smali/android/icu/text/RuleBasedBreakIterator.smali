.class public Landroid/icu/text/RuleBasedBreakIterator;
.super Landroid/icu/text/BreakIterator;
.source "RuleBasedBreakIterator.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final RBBI_DEBUG_ARG:Ljava/lang/String; = "rbbi"

.field private static final RBBI_END:I = 0x2

.field private static final RBBI_RUN:I = 0x1

.field private static final RBBI_START:I = 0x0

.field private static final START_STATE:I = 0x1

.field private static final STOP_STATE:I

.field private static final TRACE:Z

.field static final fDebugEnv:Ljava/lang/String;


# instance fields
.field private final fBreakEngines:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/icu/text/LanguageBreakEngine;",
            ">;"
        }
    .end annotation
.end field

.field private fBreakType:I

.field private fCachedBreakPositions:[I

.field private fDictionaryCharCount:I

.field private fLastRuleStatusIndex:I

.field private fLastStatusIndexValid:Z

.field private fPositionInCache:I

.field fRData:Landroid/icu/text/RBBIDataWrapper;

.field private fText:Ljava/text/CharacterIterator;

.field private final fUnhandledBreakEngine:Landroid/icu/text/UnhandledBreakEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-class v0, Landroid/icu/text/RuleBasedBreakIterator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/icu/text/RuleBasedBreakIterator;->-assertionsDisabled:Z

    const-string/jumbo v0, "rbbi"

    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "rbbi"

    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "trace"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    const-string/jumbo v0, "rbbi"

    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "rbbi"

    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    sput-object v0, Landroid/icu/text/RuleBasedBreakIterator;->fDebugEnv:Ljava/lang/String;

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/icu/text/BreakIterator;-><init>()V

    new-instance v0, Ljava/text/StringCharacterIterator;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    const/4 v0, 0x2

    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakType:I

    new-instance v0, Landroid/icu/text/UnhandledBreakEngine;

    invoke-direct {v0}, Landroid/icu/text/UnhandledBreakEngine;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fUnhandledBreakEngine:Landroid/icu/text/UnhandledBreakEngine;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakEngines:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakEngines:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fUnhandledBreakEngine:Landroid/icu/text/UnhandledBreakEngine;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Landroid/icu/text/RuleBasedBreakIterator;-><init>()V

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p1, v2}, Landroid/icu/text/RuleBasedBreakIterator;->compileRules(Ljava/lang/String;Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Landroid/icu/text/RBBIDataWrapper;->get(Ljava/nio/ByteBuffer;)Landroid/icu/text/RBBIDataWrapper;

    move-result-object v3

    iput-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RuleBasedBreakIterator rule compilation internal error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkDictionary(IIZ)I
    .locals 15

    invoke-direct {p0}, Landroid/icu/text/RuleBasedBreakIterator;->reset()V

    sub-int v2, p2, p1

    const/4 v5, 0x1

    if-gt v2, v5, :cond_1

    if-eqz p3, :cond_0

    :goto_0
    return p1

    :cond_0
    move/from16 p1, p2

    goto :goto_0

    :cond_1
    iget-object v5, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-eqz p3, :cond_7

    move/from16 v2, p2

    :goto_1
    invoke-interface {v5, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    if-eqz p3, :cond_2

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    :cond_2
    move/from16 v3, p1

    move/from16 v4, p2

    new-instance v7, Landroid/icu/text/DictionaryBreakEngine$DequeI;

    invoke-direct {v7}, Landroid/icu/text/DictionaryBreakEngine$DequeI;-><init>()V

    const/4 v11, 0x0

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v8

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper;->fTrie:Landroid/icu/impl/CharTrie;

    invoke-virtual {v2, v8}, Landroid/icu/impl/CharTrie;->getCodePointValue(I)C

    move-result v2

    int-to-short v9, v2

    and-int/lit16 v2, v9, 0x4000

    if-eqz v2, :cond_5

    if-eqz p3, :cond_9

    :cond_3
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v8

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper;->fTrie:Landroid/icu/impl/CharTrie;

    invoke-virtual {v2, v8}, Landroid/icu/impl/CharTrie;->getCodePointValue(I)C

    move-result v2

    int-to-short v9, v2

    const v2, 0x7fffffff

    if-eq v8, v2, :cond_4

    and-int/lit16 v2, v9, 0x4000

    if-nez v2, :cond_3

    :cond_4
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v2}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v4

    const v2, 0x7fffffff

    if-ne v8, v2, :cond_8

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    move-result v8

    :goto_2
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper;->fTrie:Landroid/icu/impl/CharTrie;

    invoke-virtual {v2, v8}, Landroid/icu/impl/CharTrie;->getCodePointValue(I)C

    move-result v2

    int-to-short v9, v2

    :cond_5
    if-eqz p3, :cond_6

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v2, v3}, Ljava/text/CharacterIterator;->setIndex(I)C

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v8

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper;->fTrie:Landroid/icu/impl/CharTrie;

    invoke-virtual {v2, v8}, Landroid/icu/impl/CharTrie;->getCodePointValue(I)C

    move-result v2

    int-to-short v9, v2

    :cond_6
    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v2}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v10

    if-ge v10, v4, :cond_c

    and-int/lit16 v2, v9, 0x4000

    if-nez v2, :cond_c

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v8

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper;->fTrie:Landroid/icu/impl/CharTrie;

    invoke-virtual {v2, v8}, Landroid/icu/impl/CharTrie;->getCodePointValue(I)C

    move-result v2

    int-to-short v9, v2

    goto :goto_3

    :cond_7
    move/from16 v2, p1

    goto/16 :goto_1

    :cond_8
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    move-result v8

    goto :goto_2

    :cond_9
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    move-result v8

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper;->fTrie:Landroid/icu/impl/CharTrie;

    invoke-virtual {v2, v8}, Landroid/icu/impl/CharTrie;->getCodePointValue(I)C

    move-result v2

    int-to-short v9, v2

    const v2, 0x7fffffff

    if-eq v8, v2, :cond_a

    and-int/lit16 v2, v9, 0x4000

    if-nez v2, :cond_9

    :cond_a
    const v2, 0x7fffffff

    if-ne v8, v2, :cond_b

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v8

    :goto_4
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v2}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v3

    goto :goto_2

    :cond_b
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v8

    goto :goto_4

    :cond_c
    if-lt v10, v4, :cond_e

    if-lez v11, :cond_17

    invoke-virtual {v7}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v2

    if-eq v11, v2, :cond_d

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "oops, foundBreakCount != breaks.size().  LBE = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_d
    sget-boolean v2, Landroid/icu/text/RuleBasedBreakIterator;->-assertionsDisabled:Z

    if-nez v2, :cond_12

    invoke-virtual {v7}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v2

    if-ne v11, v2, :cond_11

    const/4 v2, 0x1

    :goto_5
    if-nez v2, :cond_12

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_e
    invoke-direct {p0, v8}, Landroid/icu/text/RuleBasedBreakIterator;->getLanguageBreakEngine(I)Landroid/icu/text/LanguageBreakEngine;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v2}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v14

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    iget v6, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakType:I

    const/4 v5, 0x0

    invoke-interface/range {v1 .. v7}, Landroid/icu/text/LanguageBreakEngine;->findBreaks(Ljava/text/CharacterIterator;IIZILandroid/icu/text/DictionaryBreakEngine$DequeI;)I

    move-result v2

    add-int/2addr v11, v2

    sget-boolean v2, Landroid/icu/text/RuleBasedBreakIterator;->-assertionsDisabled:Z

    if-nez v2, :cond_10

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v2}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v2

    if-le v2, v14, :cond_f

    const/4 v2, 0x1

    :goto_6
    if-nez v2, :cond_10

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_f
    const/4 v2, 0x0

    goto :goto_6

    :cond_10
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v8

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper;->fTrie:Landroid/icu/impl/CharTrie;

    invoke-virtual {v2, v8}, Landroid/icu/impl/CharTrie;->getCodePointValue(I)C

    move-result v2

    int-to-short v9, v2

    goto/16 :goto_3

    :cond_11
    const/4 v2, 0x0

    goto :goto_5

    :cond_12
    invoke-virtual {v7}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->peekLast()I

    move-result v2

    move/from16 v0, p1

    if-ge v0, v2, :cond_13

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->offer(I)V

    :cond_13
    invoke-virtual {v7}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->peek()I

    move-result v2

    move/from16 v0, p2

    if-le v0, v2, :cond_14

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->push(I)V

    :cond_14
    invoke-virtual {v7}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    const/4 v12, 0x0

    :goto_7
    invoke-virtual {v7}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v2

    if-lez v2, :cond_15

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v7}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->pollLast()I

    move-result v5

    aput v5, v2, v12

    move v12, v13

    goto :goto_7

    :cond_15
    if-eqz p3, :cond_16

    move/from16 v0, p2

    invoke-virtual {p0, v0}, Landroid/icu/text/RuleBasedBreakIterator;->preceding(I)I

    move-result v2

    return v2

    :cond_16
    invoke-virtual/range {p0 .. p1}, Landroid/icu/text/RuleBasedBreakIterator;->following(I)I

    move-result v2

    return v2

    :cond_17
    iget-object v5, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-eqz p3, :cond_18

    move/from16 v2, p1

    :goto_8
    invoke-interface {v5, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    if-eqz p3, :cond_19

    :goto_9
    return p1

    :cond_18
    move/from16 v2, p2

    goto :goto_8

    :cond_19
    move/from16 p1, p2

    goto :goto_9
.end method

.method protected static final checkOffset(ILjava/text/CharacterIterator;)V
    .locals 2

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    if-lt p0, v0, :cond_0

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "offset out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static compileRules(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/icu/text/RBBIRuleBuilder;->compileRules(Ljava/lang/String;Ljava/io/OutputStream;)V

    return-void
.end method

.method public static getInstanceFromCompiledRules(Ljava/io/InputStream;)Landroid/icu/text/RuleBasedBreakIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/icu/text/RuleBasedBreakIterator;

    invoke-direct {v0}, Landroid/icu/text/RuleBasedBreakIterator;-><init>()V

    invoke-static {p0}, Landroid/icu/impl/ICUBinary;->getByteBufferFromInputStreamAndCloseStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/text/RBBIDataWrapper;->get(Ljava/nio/ByteBuffer;)Landroid/icu/text/RBBIDataWrapper;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    return-object v0
.end method

.method public static getInstanceFromCompiledRules(Ljava/nio/ByteBuffer;)Landroid/icu/text/RuleBasedBreakIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/icu/text/RuleBasedBreakIterator;

    invoke-direct {v0}, Landroid/icu/text/RuleBasedBreakIterator;-><init>()V

    invoke-static {p0}, Landroid/icu/text/RBBIDataWrapper;->get(Ljava/nio/ByteBuffer;)Landroid/icu/text/RBBIDataWrapper;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    return-object v0
.end method

.method private getLanguageBreakEngine(I)Landroid/icu/text/LanguageBreakEngine;
    .locals 9

    const/4 v8, 0x1

    iget-object v6, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakEngines:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/LanguageBreakEngine;

    iget v6, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakType:I

    invoke-interface {v0, p1, v6}, Landroid/icu/text/LanguageBreakEngine;->handles(II)Z

    move-result v6

    if-eqz v6, :cond_0

    return-object v0

    :cond_1
    const/16 v6, 0x100a

    invoke-static {p1, v6}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result v5

    const/16 v6, 0x16

    if-eq v5, v6, :cond_2

    const/16 v6, 0x14

    if-ne v5, v6, :cond_3

    :cond_2
    const/16 v5, 0x11

    :cond_3
    iget-object v6, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakEngines:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/LanguageBreakEngine;

    sparse-switch v5, :sswitch_data_0

    :try_start_0
    iget-object v6, p0, Landroid/icu/text/RuleBasedBreakIterator;->fUnhandledBreakEngine:Landroid/icu/text/UnhandledBreakEngine;

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->getBreakType()I

    move-result v7

    invoke-virtual {v6, p1, v7}, Landroid/icu/text/UnhandledBreakEngine;->handleChar(II)V

    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fUnhandledBreakEngine:Landroid/icu/text/UnhandledBreakEngine;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v3, :cond_4

    iget-object v6, p0, Landroid/icu/text/RuleBasedBreakIterator;->fUnhandledBreakEngine:Landroid/icu/text/UnhandledBreakEngine;

    if-eq v3, v6, :cond_4

    iget-object v6, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakEngines:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/LanguageBreakEngine;

    if-eqz v4, :cond_4

    move-object v3, v4

    :cond_4
    return-object v3

    :sswitch_0
    :try_start_1
    new-instance v3, Landroid/icu/text/ThaiBreakEngine;

    invoke-direct {v3}, Landroid/icu/text/ThaiBreakEngine;-><init>()V

    goto :goto_0

    :sswitch_1
    new-instance v3, Landroid/icu/text/LaoBreakEngine;

    invoke-direct {v3}, Landroid/icu/text/LaoBreakEngine;-><init>()V

    goto :goto_0

    :sswitch_2
    new-instance v3, Landroid/icu/text/BurmeseBreakEngine;

    invoke-direct {v3}, Landroid/icu/text/BurmeseBreakEngine;-><init>()V

    goto :goto_0

    :sswitch_3
    new-instance v3, Landroid/icu/text/KhmerBreakEngine;

    invoke-direct {v3}, Landroid/icu/text/KhmerBreakEngine;-><init>()V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->getBreakType()I

    move-result v6

    if-ne v6, v8, :cond_5

    new-instance v3, Landroid/icu/text/CjkBreakEngine;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Landroid/icu/text/CjkBreakEngine;-><init>(Z)V

    goto :goto_0

    :cond_5
    iget-object v6, p0, Landroid/icu/text/RuleBasedBreakIterator;->fUnhandledBreakEngine:Landroid/icu/text/UnhandledBreakEngine;

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->getBreakType()I

    move-result v7

    invoke-virtual {v6, p1, v7}, Landroid/icu/text/UnhandledBreakEngine;->handleChar(II)V

    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fUnhandledBreakEngine:Landroid/icu/text/UnhandledBreakEngine;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->getBreakType()I

    move-result v6

    if-ne v6, v8, :cond_6

    new-instance v3, Landroid/icu/text/CjkBreakEngine;

    const/4 v6, 0x1

    invoke-direct {v3, v6}, Landroid/icu/text/CjkBreakEngine;-><init>(Z)V

    goto :goto_0

    :cond_6
    iget-object v6, p0, Landroid/icu/text/RuleBasedBreakIterator;->fUnhandledBreakEngine:Landroid/icu/text/UnhandledBreakEngine;

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->getBreakType()I

    move-result v7

    invoke-virtual {v6, p1, v7}, Landroid/icu/text/UnhandledBreakEngine;->handleChar(II)V

    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fUnhandledBreakEngine:Landroid/icu/text/UnhandledBreakEngine;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_4
        0x12 -> :sswitch_5
        0x17 -> :sswitch_3
        0x18 -> :sswitch_1
        0x1c -> :sswitch_2
        0x26 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleNext([S)I
    .locals 18

    sget-boolean v14, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v14, :cond_0

    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v15, "Handle Next   pos      char  state category"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v13, v14, Landroid/icu/text/RBBIDataWrapper;->fTrie:Landroid/icu/impl/CharTrie;

    invoke-interface {v12}, Ljava/text/CharacterIterator;->current()C

    move-result v1

    const v14, 0xd800

    if-lt v1, v14, :cond_1

    invoke-static {v12, v1}, Landroid/icu/impl/CharacterIteration;->nextTrail32(Ljava/text/CharacterIterator;I)I

    move-result v1

    const v14, 0x7fffffff

    if-ne v1, v14, :cond_1

    const/4 v14, -0x1

    return v14

    :cond_1
    invoke-interface {v12}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v4

    move v9, v4

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    invoke-virtual {v14, v11}, Landroid/icu/text/RBBIDataWrapper;->getRowIndex(I)I

    move-result v10

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/icu/text/RBBIDataWrapper;->getStateTableFlags([S)I

    move-result v3

    const/4 v8, 0x1

    and-int/lit8 v14, v3, 0x2

    if-eqz v14, :cond_2

    const/4 v2, 0x2

    const/4 v8, 0x0

    sget-boolean v14, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v14, :cond_2

    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "            "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v12}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v16

    const/16 v17, 0x5

    invoke-static/range {v16 .. v17}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v15, 0xa

    invoke-static {v1, v15}, Landroid/icu/text/RBBIDataWrapper;->intToHexString(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x7

    move/from16 v0, v16

    invoke-static {v11, v0}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x2

    const/16 v17, 0x6

    invoke-static/range {v16 .. v17}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    :cond_3
    :goto_0
    if-eqz v11, :cond_4

    const v14, 0x7fffffff

    if-ne v1, v14, :cond_b

    const/4 v14, 0x2

    if-ne v8, v14, :cond_7

    if-le v5, v9, :cond_4

    move v9, v5

    move-object/from16 v0, p0

    iput v7, v0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    :cond_4
    if-ne v9, v4, :cond_12

    sget-boolean v14, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v14, :cond_5

    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v15, "Iterator did not move. Advancing by 1."

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    invoke-interface {v12, v4}, Ljava/text/CharacterIterator;->setIndex(I)C

    invoke-static {v12}, Landroid/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    invoke-interface {v12}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v9

    :goto_1
    sget-boolean v14, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v14, :cond_6

    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "result = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    return v9

    :cond_7
    const/4 v8, 0x2

    const/4 v2, 0x1

    :cond_8
    :goto_2
    add-int/lit8 v14, v10, 0x4

    add-int/2addr v14, v2

    aget-short v11, p1, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    invoke-virtual {v14, v11}, Landroid/icu/text/RBBIDataWrapper;->getRowIndex(I)I

    move-result v10

    add-int/lit8 v14, v10, 0x0

    aget-short v14, p1, v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_a

    invoke-interface {v12}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v9

    const/high16 v14, 0x10000

    if-lt v1, v14, :cond_9

    const v14, 0x10ffff

    if-gt v1, v14, :cond_9

    add-int/lit8 v9, v9, -0x1

    :cond_9
    add-int/lit8 v14, v10, 0x2

    aget-short v14, p1, v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    :cond_a
    add-int/lit8 v14, v10, 0x1

    aget-short v14, p1, v14

    if-eqz v14, :cond_11

    if-eqz v6, :cond_f

    add-int/lit8 v14, v10, 0x0

    aget-short v14, p1, v14

    if-ne v14, v6, :cond_f

    move v9, v5

    move-object/from16 v0, p0

    iput v7, v0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    const/4 v6, 0x0

    and-int/lit8 v14, v3, 0x1

    if-eqz v14, :cond_3

    invoke-interface {v12, v9}, Ljava/text/CharacterIterator;->setIndex(I)C

    return v9

    :cond_b
    const/4 v14, 0x1

    if-ne v8, v14, :cond_e

    invoke-virtual {v13, v1}, Landroid/icu/impl/CharTrie;->getCodePointValue(I)C

    move-result v14

    int-to-short v2, v14

    and-int/lit16 v14, v2, 0x4000

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget v14, v0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    and-int/lit16 v14, v2, -0x4001

    int-to-short v2, v14

    :cond_c
    sget-boolean v14, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v14, :cond_d

    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "            "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v12}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v16

    const/16 v17, 0x5

    invoke-static/range {v16 .. v17}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v15, 0xa

    invoke-static {v1, v15}, Landroid/icu/text/RBBIDataWrapper;->intToHexString(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x7

    move/from16 v0, v16

    invoke-static {v11, v0}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x6

    move/from16 v0, v16

    invoke-static {v2, v0}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_d
    invoke-interface {v12}, Ljava/text/CharacterIterator;->next()C

    move-result v1

    const v14, 0xd800

    if-lt v1, v14, :cond_8

    invoke-static {v12, v1}, Landroid/icu/impl/CharacterIteration;->nextTrail32(Ljava/text/CharacterIterator;I)I

    move-result v1

    goto/16 :goto_2

    :cond_e
    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_f
    invoke-interface {v12}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v5

    const/high16 v14, 0x10000

    if-lt v1, v14, :cond_10

    const v14, 0x10ffff

    if-gt v1, v14, :cond_10

    add-int/lit8 v5, v5, -0x1

    :cond_10
    add-int/lit8 v14, v10, 0x1

    aget-short v6, p1, v14

    add-int/lit8 v14, v10, 0x2

    aget-short v7, p1, v14

    goto/16 :goto_0

    :cond_11
    add-int/lit8 v14, v10, 0x0

    aget-short v14, p1, v14

    if-eqz v14, :cond_3

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_12
    invoke-interface {v12, v9}, Ljava/text/CharacterIterator;->setIndex(I)C

    goto/16 :goto_1
.end method

.method private handlePrevious([S)I
    .locals 14

    const/4 v13, 0x1

    const/4 v11, 0x0

    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-eqz v10, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return v11

    :cond_1
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    invoke-virtual {v10, p1}, Landroid/icu/text/RBBIDataWrapper;->getStateTableFlags([S)I

    move-result v10

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_8

    const/4 v3, 0x1

    :goto_0
    iput-boolean v11, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    iput v11, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v10}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v2

    move v7, v2

    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v10}, Landroid/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    move-result v0

    const/4 v9, 0x1

    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    invoke-virtual {v10, v9}, Landroid/icu/text/RBBIDataWrapper;->getRowIndex(I)I

    move-result v8

    const/4 v1, 0x3

    const/4 v6, 0x1

    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    invoke-virtual {v10, p1}, Landroid/icu/text/RBBIDataWrapper;->getStateTableFlags([S)I

    move-result v10

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_2

    const/4 v1, 0x2

    const/4 v6, 0x0

    :cond_2
    sget-boolean v10, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v10, :cond_3

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v11, "Handle Prev   pos   char  state category "

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    :goto_1
    const v10, 0x7fffffff

    if-ne v0, v10, :cond_b

    const/4 v10, 0x2

    if-eq v6, v10, :cond_4

    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v10, v10, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v10, v10, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fVersion:I

    if-ne v10, v13, :cond_a

    :cond_4
    if-ge v4, v7, :cond_9

    move v7, v4

    const/4 v5, 0x0

    :cond_5
    :goto_2
    if-ne v7, v2, :cond_6

    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v10, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v7

    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v10}, Landroid/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v10}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v7

    :cond_6
    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v10, v7}, Ljava/text/CharacterIterator;->setIndex(I)C

    sget-boolean v10, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v10, :cond_7

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Result = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    return v7

    :cond_8
    const/4 v3, 0x0

    goto :goto_0

    :cond_9
    if-ne v7, v2, :cond_5

    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v10, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v10}, Landroid/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    goto :goto_2

    :cond_a
    const/4 v6, 0x2

    const/4 v1, 0x1

    :cond_b
    if-ne v6, v13, :cond_c

    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v10, v10, Landroid/icu/text/RBBIDataWrapper;->fTrie:Landroid/icu/impl/CharTrie;

    invoke-virtual {v10, v0}, Landroid/icu/impl/CharTrie;->getCodePointValue(I)C

    move-result v10

    int-to-short v1, v10

    and-int/lit16 v10, v1, 0x4000

    if-eqz v10, :cond_c

    iget v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    and-int/lit16 v1, v1, -0x4001

    :cond_c
    sget-boolean v10, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v10, :cond_d

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "             "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v12}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "   "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/16 v10, 0x20

    if-gt v10, v0, :cond_10

    const/16 v10, 0x7f

    if-ge v0, v10, :cond_10

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_3
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_d
    add-int/lit8 v10, v8, 0x4

    add-int/2addr v10, v1

    aget-short v9, p1, v10

    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    invoke-virtual {v10, v9}, Landroid/icu/text/RBBIDataWrapper;->getRowIndex(I)I

    move-result v8

    add-int/lit8 v10, v8, 0x0

    aget-short v10, p1, v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_e

    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v10}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v7

    :cond_e
    add-int/lit8 v10, v8, 0x1

    aget-short v10, p1, v10

    if-eqz v10, :cond_12

    if-eqz v5, :cond_11

    add-int/lit8 v10, v8, 0x0

    aget-short v10, p1, v10

    if-ne v10, v5, :cond_11

    move v7, v4

    const/4 v5, 0x0

    if-nez v3, :cond_5

    :cond_f
    :goto_4
    if-eqz v9, :cond_5

    if-ne v6, v13, :cond_13

    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v10}, Landroid/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    move-result v0

    goto/16 :goto_1

    :cond_10
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_11
    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v10}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v4

    add-int/lit8 v10, v8, 0x1

    aget-short v5, p1, v10

    goto :goto_4

    :cond_12
    add-int/lit8 v10, v8, 0x0

    aget-short v10, p1, v10

    if-eqz v10, :cond_f

    if-nez v3, :cond_f

    const/4 v5, 0x0

    goto :goto_4

    :cond_13
    if-nez v6, :cond_3

    const/4 v6, 0x1

    goto/16 :goto_1
.end method

.method private makeRuleStatusValid()V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->current()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v3}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v3

    if-ne v0, v3, :cond_3

    :cond_0
    iput v5, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    iput-boolean v4, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    :goto_0
    iget-boolean v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    if-eqz v3, :cond_6

    move v3, v4

    :goto_1
    invoke-static {v3}, Landroid/icu/impl/Assert;->assrt(Z)V

    iget v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    if-ltz v3, :cond_1

    iget v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    iget-object v6, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v6, v6, Landroid/icu/text/RBBIDataWrapper;->fStatusTable:[I

    array-length v6, v6

    if-ge v3, v6, :cond_1

    move v5, v4

    :cond_1
    invoke-static {v5}, Landroid/icu/impl/Assert;->assrt(Z)V

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v3}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->first()I

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->current()I

    move-result v2

    :goto_2
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v3}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v3

    if-ge v3, v1, :cond_4

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->next()I

    move-result v2

    goto :goto_2

    :cond_4
    if-ne v1, v2, :cond_5

    move v3, v4

    :goto_3
    invoke-static {v3}, Landroid/icu/impl/Assert;->assrt(Z)V

    goto :goto_0

    :cond_5
    move v3, v5

    goto :goto_3

    :cond_6
    move v3, v5

    goto :goto_1
.end method

.method private reset()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    iput v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    iput v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    return-void
.end method

.method private rulesFollowing(I)I
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v2}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v2

    if-lt p1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->last()I

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->next()I

    move-result v2

    return v2

    :cond_1
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v2}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v2

    if-ge p1, v2, :cond_2

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->first()I

    move-result v2

    return v2

    :cond_2
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper;->fSRTable:[S

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v2, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper;->fSRTable:[S

    invoke-direct {p0, v2}, Landroid/icu/text/RuleBasedBreakIterator;->handlePrevious([S)I

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->next()I

    move-result v1

    :goto_0
    if-gt v1, p1, :cond_3

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->next()I

    move-result v1

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper;->fSFTable:[S

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v2, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper;->fSFTable:[S

    invoke-direct {p0, v2}, Landroid/icu/text/RuleBasedBreakIterator;->handleNext([S)I

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->previous()I

    move-result v0

    :goto_1
    if-le v0, p1, :cond_6

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->previous()I

    move-result v1

    if-gt v1, p1, :cond_5

    return v0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->next()I

    move-result v1

    if-gt v1, p1, :cond_7

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->next()I

    move-result v2

    return v2

    :cond_7
    return v1

    :cond_8
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v2, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v2}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v2

    if-ne p1, v2, :cond_9

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->next()I

    move-result v2

    return v2

    :cond_9
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->previous()I

    move-result v1

    :goto_2
    const/4 v2, -0x1

    if-eq v1, v2, :cond_a

    if-gt v1, p1, :cond_a

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->next()I

    move-result v1

    goto :goto_2

    :cond_a
    return v1
.end method

.method private rulesPreceding(I)I
    .locals 3

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v2}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v2

    if-le p1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->last()I

    move-result v2

    return v2

    :cond_1
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v2}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v2

    if-ge p1, v2, :cond_2

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->first()I

    move-result v2

    return v2

    :cond_2
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper;->fSFTable:[S

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v2, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper;->fSFTable:[S

    invoke-direct {p0, v2}, Landroid/icu/text/RuleBasedBreakIterator;->handleNext([S)I

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->previous()I

    move-result v1

    :goto_0
    if-lt v1, p1, :cond_3

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->previous()I

    move-result v1

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper;->fSRTable:[S

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v2, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper;->fSRTable:[S

    invoke-direct {p0, v2}, Landroid/icu/text/RuleBasedBreakIterator;->handlePrevious([S)I

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->next()I

    move-result v0

    :goto_1
    if-ge v0, p1, :cond_6

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->next()I

    move-result v1

    if-lt v1, p1, :cond_5

    return v0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->previous()I

    move-result v1

    if-lt v1, p1, :cond_7

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->previous()I

    move-result v2

    return v2

    :cond_7
    return v1

    :cond_8
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v2, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->previous()I

    move-result v2

    return v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Landroid/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/RuleBasedBreakIterator;

    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/CharacterIterator;

    iput-object v1, v0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    :cond_0
    return-object v0
.end method

.method public current()I
    .locals 1

    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public dump()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    invoke-virtual {v0}, Landroid/icu/text/RBBIDataWrapper;->dump()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_0

    return v5

    :cond_0
    if-ne p0, p1, :cond_1

    return v6

    :cond_1
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/icu/text/RuleBasedBreakIterator;

    move-object v2, v0

    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v4, v2, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    if-nez v3, :cond_3

    :cond_2
    return v5

    :cond_3
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    if-eqz v3, :cond_4

    iget-object v3, v2, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v3, v3, Landroid/icu/text/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v4, v4, Landroid/icu/text/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-nez v3, :cond_6

    iget-object v3, v2, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-nez v3, :cond_6

    return v6

    :cond_5
    return v5

    :cond_6
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-eqz v3, :cond_7

    iget-object v3, v2, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-nez v3, :cond_8

    :cond_7
    return v5

    :cond_8
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    iget-object v4, v2, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v1

    return v5
.end method

.method public first()I
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->first()C

    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    return v0
.end method

.method public following(I)I
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->getText()Ljava/text/CharacterIterator;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    aget v1, v1, v3

    if-ge p1, v1, :cond_1

    :cond_0
    iput-object v4, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedBreakIterator;->rulesFollowing(I)I

    move-result v1

    return v1

    :cond_1
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    if-ge p1, v1, :cond_0

    iput v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    :goto_0
    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    aget v1, v1, v2

    if-lt p1, v1, :cond_2

    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    aget v1, v1, v2

    invoke-interface {v0, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    return v1
.end method

.method getBreakType()I
    .locals 1

    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakType:I

    return v0
.end method

.method public getRuleStatus()I
    .locals 5

    invoke-direct {p0}, Landroid/icu/text/RuleBasedBreakIterator;->makeRuleStatusValid()V

    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v3, v3, Landroid/icu/text/RBBIDataWrapper;->fStatusTable:[I

    iget v4, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    aget v3, v3, v4

    add-int v0, v2, v3

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper;->fStatusTable:[I

    aget v1, v2, v0

    return v1
.end method

.method public getRuleStatusVec([I)I
    .locals 5

    invoke-direct {p0}, Landroid/icu/text/RuleBasedBreakIterator;->makeRuleStatusValid()V

    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v3, v3, Landroid/icu/text/RBBIDataWrapper;->fStatusTable:[I

    iget v4, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    aget v1, v3, v4

    if-eqz p1, :cond_0

    array-length v3, p1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v3, v3, Landroid/icu/text/RBBIDataWrapper;->fStatusTable:[I

    iget v4, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    aput v3, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getText()Ljava/text/CharacterIterator;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v0, v0, Landroid/icu/text/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBoundary(I)Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {p1, v2}, Landroid/icu/text/RuleBasedBreakIterator;->checkOffset(ILjava/text/CharacterIterator;)V

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v2}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v2

    if-ne p1, v2, :cond_0

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->first()I

    return v1

    :cond_0
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v2}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v2

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->last()I

    return v1

    :cond_1
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v2, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v2}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/text/RuleBasedBreakIterator;->following(I)I

    move-result v2

    if-ne v2, p1, :cond_2

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public last()I
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    iput-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    iput v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    iput v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-nez v1, :cond_0

    iput v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    const/4 v1, -0x1

    return v1

    :cond_0
    iput-boolean v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    return v0
.end method

.method public next()I
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    iget-object v4, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    iget v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    iget v4, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    aget v0, v3, v4

    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v3, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    return v0

    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedBreakIterator;->reset()V

    :cond_1
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->current()I

    move-result v2

    iput v5, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v3, v3, Landroid/icu/text/RBBIDataWrapper;->fFTable:[S

    invoke-direct {p0, v3}, Landroid/icu/text/RuleBasedBreakIterator;->handleNext([S)I

    move-result v1

    iget v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    if-lez v3, :cond_2

    invoke-direct {p0, v2, v1, v5}, Landroid/icu/text/RuleBasedBreakIterator;->checkDictionary(IIZ)I

    move-result v1

    :cond_2
    return v1
.end method

.method public next(I)I
    .locals 1

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->current()I

    move-result v0

    :goto_0
    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->next()I

    move-result v0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-gez p1, :cond_1

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->previous()I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return v0
.end method

.method public preceding(I)I
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->getText()Ljava/text/CharacterIterator;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    aget v1, v1, v3

    if-gt p1, v1, :cond_1

    :cond_0
    iput-object v4, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedBreakIterator;->rulesPreceding(I)I

    move-result v1

    return v1

    :cond_1
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    if-gt p1, v1, :cond_0

    iput v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    :goto_0
    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    aget v1, v1, v2

    if-le p1, v1, :cond_2

    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    aget v1, v1, v2

    invoke-interface {v0, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    return v1
.end method

.method public previous()I
    .locals 12

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->getText()Ljava/text/CharacterIterator;

    move-result-object v7

    iput-boolean v9, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    if-eqz v8, :cond_2

    iget v8, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    if-lez v8, :cond_1

    iget v8, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    iget v8, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    if-gtz v8, :cond_0

    iput-boolean v9, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    :cond_0
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    iget v9, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    aget v3, v8, v9

    invoke-interface {v7, v3}, Ljava/text/CharacterIterator;->setIndex(I)C

    return v3

    :cond_1
    invoke-direct {p0}, Landroid/icu/text/RuleBasedBreakIterator;->reset()V

    :cond_2
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->current()I

    move-result v6

    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v8}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v8

    if-ne v6, v8, :cond_4

    :cond_3
    iput v9, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    iput-boolean v11, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    return v10

    :cond_4
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v8, v8, Landroid/icu/text/RBBIDataWrapper;->fSRTable:[S

    if-nez v8, :cond_5

    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v8, v8, Landroid/icu/text/RBBIDataWrapper;->fSFTable:[S

    if-eqz v8, :cond_7

    :cond_5
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v8, v8, Landroid/icu/text/RBBIDataWrapper;->fRTable:[S

    invoke-direct {p0, v8}, Landroid/icu/text/RuleBasedBreakIterator;->handlePrevious([S)I

    move-result v4

    iget v8, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    if-lez v8, :cond_6

    invoke-direct {p0, v4, v6, v11}, Landroid/icu/text/RuleBasedBreakIterator;->checkDictionary(IIZ)I

    move-result v4

    :cond_6
    return v4

    :cond_7
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->current()I

    move-result v5

    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v8}, Landroid/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v8, v8, Landroid/icu/text/RBBIDataWrapper;->fRTable:[S

    invoke-direct {p0, v8}, Landroid/icu/text/RuleBasedBreakIterator;->handlePrevious([S)I

    move-result v1

    if-ne v1, v10, :cond_8

    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v8}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v8, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    :cond_8
    move v4, v1

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->next()I

    move-result v4

    if-eq v4, v10, :cond_9

    if-lt v4, v5, :cond_a

    :cond_9
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v8, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    iput v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    iput-boolean v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    return v1

    :cond_a
    move v1, v4

    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method setBreakType(I)V
    .locals 0

    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakType:I

    return-void
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->first()I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v0, v1, Landroid/icu/text/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    :cond_0
    return-object v0
.end method
