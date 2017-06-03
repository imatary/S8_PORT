.class final Landroid/icu/text/NormalizationTransliterator;
.super Landroid/icu/text/Transliterator;
.source "NormalizationTransliterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/NormalizationTransliterator$NormalizingTransform;
    }
.end annotation


# static fields
.field static final SOURCE_CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/icu/text/Normalizer2;",
            "Landroid/icu/text/SourceTargetUtility;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final norm2:Landroid/icu/text/Normalizer2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/icu/text/NormalizationTransliterator;->SOURCE_CACHE:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/icu/text/Normalizer2;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    iput-object p2, p0, Landroid/icu/text/NormalizationTransliterator;->norm2:Landroid/icu/text/Normalizer2;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/icu/text/Normalizer2;Landroid/icu/text/NormalizationTransliterator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/icu/text/NormalizationTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/Normalizer2;)V

    return-void
.end method

.method static register()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "Any-NFC"

    new-instance v1, Landroid/icu/text/NormalizationTransliterator$1;

    invoke-direct {v1}, Landroid/icu/text/NormalizationTransliterator$1;-><init>()V

    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    const-string/jumbo v0, "Any-NFD"

    new-instance v1, Landroid/icu/text/NormalizationTransliterator$2;

    invoke-direct {v1}, Landroid/icu/text/NormalizationTransliterator$2;-><init>()V

    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    const-string/jumbo v0, "Any-NFKC"

    new-instance v1, Landroid/icu/text/NormalizationTransliterator$3;

    invoke-direct {v1}, Landroid/icu/text/NormalizationTransliterator$3;-><init>()V

    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    const-string/jumbo v0, "Any-NFKD"

    new-instance v1, Landroid/icu/text/NormalizationTransliterator$4;

    invoke-direct {v1}, Landroid/icu/text/NormalizationTransliterator$4;-><init>()V

    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    const-string/jumbo v0, "Any-FCD"

    new-instance v1, Landroid/icu/text/NormalizationTransliterator$5;

    invoke-direct {v1}, Landroid/icu/text/NormalizationTransliterator$5;-><init>()V

    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    const-string/jumbo v0, "Any-FCC"

    new-instance v1, Landroid/icu/text/NormalizationTransliterator$6;

    invoke-direct {v1}, Landroid/icu/text/NormalizationTransliterator$6;-><init>()V

    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    const-string/jumbo v0, "NFC"

    const-string/jumbo v1, "NFD"

    invoke-static {v0, v1, v3}, Landroid/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "NFKC"

    const-string/jumbo v1, "NFKD"

    invoke-static {v0, v1, v3}, Landroid/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "FCC"

    const-string/jumbo v1, "NFD"

    invoke-static {v0, v1, v2}, Landroid/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "FCD"

    const-string/jumbo v1, "FCD"

    invoke-static {v0, v1, v2}, Landroid/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 4

    sget-object v2, Landroid/icu/text/NormalizationTransliterator;->SOURCE_CACHE:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/icu/text/NormalizationTransliterator;->SOURCE_CACHE:Ljava/util/Map;

    iget-object v3, p0, Landroid/icu/text/NormalizationTransliterator;->norm2:Landroid/icu/text/Normalizer2;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/SourceTargetUtility;

    if-nez v0, :cond_0

    new-instance v0, Landroid/icu/text/SourceTargetUtility;

    new-instance v1, Landroid/icu/text/NormalizationTransliterator$NormalizingTransform;

    iget-object v3, p0, Landroid/icu/text/NormalizationTransliterator;->norm2:Landroid/icu/text/Normalizer2;

    invoke-direct {v1, v3}, Landroid/icu/text/NormalizationTransliterator$NormalizingTransform;-><init>(Landroid/icu/text/Normalizer2;)V

    iget-object v3, p0, Landroid/icu/text/NormalizationTransliterator;->norm2:Landroid/icu/text/Normalizer2;

    invoke-direct {v0, v1, v3}, Landroid/icu/text/SourceTargetUtility;-><init>(Landroid/icu/text/Transform;Landroid/icu/text/Normalizer2;)V

    sget-object v1, Landroid/icu/text/NormalizationTransliterator;->SOURCE_CACHE:Ljava/util/Map;

    iget-object v3, p0, Landroid/icu/text/NormalizationTransliterator;->norm2:Landroid/icu/text/Normalizer2;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/icu/text/SourceTargetUtility;->addSourceTargetSet(Landroid/icu/text/Transliterator;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 9

    iget v6, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v2, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    if-lt v6, v2, :cond_0

    return-void

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v6}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v0

    :cond_1
    move v4, v6

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v6, v7

    if-ge v6, v2, :cond_3

    iget-object v7, p0, Landroid/icu/text/NormalizationTransliterator;->norm2:Landroid/icu/text/Normalizer2;

    invoke-interface {p1, v6}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_3
    if-ne v6, v2, :cond_4

    if-eqz p3, :cond_4

    iget-object v7, p0, Landroid/icu/text/NormalizationTransliterator;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v7, v0}, Landroid/icu/text/Normalizer2;->hasBoundaryAfter(I)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_4
    iget-object v7, p0, Landroid/icu/text/NormalizationTransliterator;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v7, v5, v3}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    invoke-static {v5, v3}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->equal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v4, v6, v7}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int v8, v6, v4

    sub-int v1, v7, v8

    add-int/2addr v6, v1

    add-int/2addr v2, v1

    :cond_5
    if-lt v6, v2, :cond_1

    :goto_0
    iput v6, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v7, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    iget v8, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    sub-int v8, v2, v8

    add-int/2addr v7, v8

    iput v7, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    iput v2, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    return-void

    :cond_6
    move v6, v4

    goto :goto_0
.end method
