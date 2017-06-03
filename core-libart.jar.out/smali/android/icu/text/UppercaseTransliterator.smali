.class Landroid/icu/text/UppercaseTransliterator;
.super Landroid/icu/text/Transliterator;
.source "UppercaseTransliterator.java"


# static fields
.field static final _ID:Ljava/lang/String; = "Any-Upper"


# instance fields
.field private csp:Landroid/icu/impl/UCaseProps;

.field private iter:Landroid/icu/text/ReplaceableContextIterator;

.field private locCache:[I

.field private locale:Landroid/icu/util/ULocale;

.field private result:Ljava/lang/StringBuilder;

.field sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;


# direct methods
.method static synthetic -get0(Landroid/icu/text/UppercaseTransliterator;)Landroid/icu/util/ULocale;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->locale:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string/jumbo v0, "Any-Upper"

    invoke-direct {p0, v0, v2}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    iput-object v2, p0, Landroid/icu/text/UppercaseTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    iput-object p1, p0, Landroid/icu/text/UppercaseTransliterator;->locale:Landroid/icu/util/ULocale;

    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    iput-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->csp:Landroid/icu/impl/UCaseProps;

    new-instance v0, Landroid/icu/text/ReplaceableContextIterator;

    invoke-direct {v0}, Landroid/icu/text/ReplaceableContextIterator;-><init>()V

    iput-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->result:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->locCache:[I

    iget-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->locCache:[I

    aput v1, v0, v1

    return-void
.end method

.method static register()V
    .locals 2

    const-string/jumbo v0, "Any-Upper"

    new-instance v1, Landroid/icu/text/UppercaseTransliterator$1;

    invoke-direct {v1}, Landroid/icu/text/UppercaseTransliterator$1;-><init>()V

    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    if-nez v0, :cond_0

    new-instance v0, Landroid/icu/text/SourceTargetUtility;

    new-instance v1, Landroid/icu/text/UppercaseTransliterator$2;

    invoke-direct {v1, p0}, Landroid/icu/text/UppercaseTransliterator$2;-><init>(Landroid/icu/text/UppercaseTransliterator;)V

    invoke-direct {v0, v1}, Landroid/icu/text/SourceTargetUtility;-><init>(Landroid/icu/text/Transform;)V

    iput-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    iget-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/icu/text/SourceTargetUtility;->addSourceTargetSet(Landroid/icu/text/Transliterator;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->csp:Landroid/icu/impl/UCaseProps;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v2, p2, Landroid/icu/text/Transliterator$Position;->limit:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v0, v2, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/ReplaceableContextIterator;->setText(Landroid/icu/text/Replaceable;)V

    iget-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->result:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget v2, p2, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-virtual {v0, v2}, Landroid/icu/text/ReplaceableContextIterator;->setIndex(I)V

    iget-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget v2, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-virtual {v0, v2}, Landroid/icu/text/ReplaceableContextIterator;->setLimit(I)V

    iget-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget v2, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    iget v3, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    invoke-virtual {v0, v2, v3}, Landroid/icu/text/ReplaceableContextIterator;->setContextLimits(II)V

    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-virtual {v0}, Landroid/icu/text/ReplaceableContextIterator;->nextCaseMapCP()I

    move-result v1

    if-ltz v1, :cond_5

    iget-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->csp:Landroid/icu/impl/UCaseProps;

    iget-object v2, p0, Landroid/icu/text/UppercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget-object v3, p0, Landroid/icu/text/UppercaseTransliterator;->result:Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/icu/text/UppercaseTransliterator;->locale:Landroid/icu/util/ULocale;

    iget-object v5, p0, Landroid/icu/text/UppercaseTransliterator;->locCache:[I

    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/UCaseProps;->toFullUpper(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I

    move-result v1

    iget-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-virtual {v0}, Landroid/icu/text/ReplaceableContextIterator;->didReachLimit()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    iget-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-virtual {v0}, Landroid/icu/text/ReplaceableContextIterator;->getCaseMapCPStart()I

    move-result v0

    iput v0, p2, Landroid/icu/text/Transliterator$Position;->start:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    if-ltz v1, :cond_2

    const/16 v0, 0x1f

    if-gt v1, v0, :cond_4

    :try_start_3
    iget-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget-object v2, p0, Landroid/icu/text/UppercaseTransliterator;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/icu/text/ReplaceableContextIterator;->replace(Ljava/lang/String;)I

    move-result v6

    iget-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->result:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_1
    if-eqz v6, :cond_2

    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    add-int/2addr v0, v6

    iput v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iget v0, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    add-int/2addr v0, v6

    iput v0, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_4
    iget-object v0, p0, Landroid/icu/text/UppercaseTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-static {v1}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/icu/text/ReplaceableContextIterator;->replace(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    :cond_5
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iput v0, p2, Landroid/icu/text/Transliterator$Position;->start:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void
.end method
