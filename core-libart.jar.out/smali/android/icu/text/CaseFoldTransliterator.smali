.class Landroid/icu/text/CaseFoldTransliterator;
.super Landroid/icu/text/Transliterator;
.source "CaseFoldTransliterator.java"


# static fields
.field static final _ID:Ljava/lang/String; = "Any-CaseFold"

.field static sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;


# instance fields
.field private csp:Landroid/icu/impl/UCaseProps;

.field private iter:Landroid/icu/text/ReplaceableContextIterator;

.field private result:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/icu/text/CaseFoldTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string/jumbo v0, "Any-CaseFold"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    iput-object v0, p0, Landroid/icu/text/CaseFoldTransliterator;->csp:Landroid/icu/impl/UCaseProps;

    new-instance v0, Landroid/icu/text/ReplaceableContextIterator;

    invoke-direct {v0}, Landroid/icu/text/ReplaceableContextIterator;-><init>()V

    iput-object v0, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/text/CaseFoldTransliterator;->result:Ljava/lang/StringBuilder;

    return-void
.end method

.method static register()V
    .locals 3

    const-string/jumbo v0, "Any-CaseFold"

    new-instance v1, Landroid/icu/text/CaseFoldTransliterator$1;

    invoke-direct {v1}, Landroid/icu/text/CaseFoldTransliterator$1;-><init>()V

    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    const-string/jumbo v0, "CaseFold"

    const-string/jumbo v1, "Upper"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 3

    const-class v1, Landroid/icu/text/UppercaseTransliterator;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/icu/text/CaseFoldTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    if-nez v0, :cond_0

    new-instance v0, Landroid/icu/text/SourceTargetUtility;

    new-instance v2, Landroid/icu/text/CaseFoldTransliterator$2;

    invoke-direct {v2, p0}, Landroid/icu/text/CaseFoldTransliterator$2;-><init>(Landroid/icu/text/CaseFoldTransliterator;)V

    invoke-direct {v0, v2}, Landroid/icu/text/SourceTargetUtility;-><init>(Landroid/icu/text/Transform;)V

    sput-object v0, Landroid/icu/text/CaseFoldTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    sget-object v0, Landroid/icu/text/CaseFoldTransliterator;->sourceTargetUtility:Landroid/icu/text/SourceTargetUtility;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/icu/text/SourceTargetUtility;->addSourceTargetSet(Landroid/icu/text/Transliterator;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected declared-synchronized handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/icu/text/CaseFoldTransliterator;->csp:Landroid/icu/impl/UCaseProps;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v2, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v3, p2, Landroid/icu/text/Transliterator$Position;->limit:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v2, v3, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v2, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-virtual {v2, p1}, Landroid/icu/text/ReplaceableContextIterator;->setText(Landroid/icu/text/Replaceable;)V

    iget-object v2, p0, Landroid/icu/text/CaseFoldTransliterator;->result:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v2, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget v3, p2, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-virtual {v2, v3}, Landroid/icu/text/ReplaceableContextIterator;->setIndex(I)V

    iget-object v2, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget v3, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-virtual {v2, v3}, Landroid/icu/text/ReplaceableContextIterator;->setLimit(I)V

    iget-object v2, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget v3, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    iget v4, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    invoke-virtual {v2, v3, v4}, Landroid/icu/text/ReplaceableContextIterator;->setContextLimits(II)V

    :cond_2
    :goto_0
    iget-object v2, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-virtual {v2}, Landroid/icu/text/ReplaceableContextIterator;->nextCaseMapCP()I

    move-result v0

    if-ltz v0, :cond_5

    iget-object v2, p0, Landroid/icu/text/CaseFoldTransliterator;->csp:Landroid/icu/impl/UCaseProps;

    iget-object v3, p0, Landroid/icu/text/CaseFoldTransliterator;->result:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/StringBuilder;I)I

    move-result v0

    iget-object v2, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-virtual {v2}, Landroid/icu/text/ReplaceableContextIterator;->didReachLimit()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p3, :cond_3

    iget-object v2, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-virtual {v2}, Landroid/icu/text/ReplaceableContextIterator;->getCaseMapCPStart()I

    move-result v2

    iput v2, p2, Landroid/icu/text/Transliterator$Position;->start:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    if-ltz v0, :cond_2

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_4

    :try_start_3
    iget-object v2, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    iget-object v3, p0, Landroid/icu/text/CaseFoldTransliterator;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/icu/text/ReplaceableContextIterator;->replace(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Landroid/icu/text/CaseFoldTransliterator;->result:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_1
    if-eqz v1, :cond_2

    iget v2, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    add-int/2addr v2, v1

    iput v2, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iget v2, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    add-int/2addr v2, v1

    iput v2, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_4
    :try_start_4
    iget-object v2, p0, Landroid/icu/text/CaseFoldTransliterator;->iter:Landroid/icu/text/ReplaceableContextIterator;

    invoke-static {v0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/icu/text/ReplaceableContextIterator;->replace(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_5
    iget v2, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iput v2, p2, Landroid/icu/text/Transliterator$Position;->start:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void
.end method
