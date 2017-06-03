.class public final Landroid/icu/impl/LocaleIDParser;
.super Ljava/lang/Object;
.source "LocaleIDParser.java"


# static fields
.field private static final COMMA:C = ','

.field private static final DONE:C = '\uffff'

.field private static final DOT:C = '.'

.field private static final HYPHEN:C = '-'

.field private static final ITEM_SEPARATOR:C = ';'

.field private static final KEYWORD_ASSIGN:C = '='

.field private static final KEYWORD_SEPARATOR:C = '@'

.field private static final UNDERSCORE:C = '_'


# instance fields
.field baseName:Ljava/lang/String;

.field private buffer:Ljava/lang/StringBuilder;

.field private canonicalize:Z

.field private hadCountry:Z

.field private id:[C

.field private index:I

.field keywords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    array-length v1, v1

    add-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    iput-boolean p2, p0, Landroid/icu/impl/LocaleIDParser;->canonicalize:Z

    return-void
.end method

.method private addSeparator()V
    .locals 1

    const/16 v0, 0x5f

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    return-void
.end method

.method private append(C)V
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private atTerminator()Z
    .locals 2

    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    iget v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->isTerminator(C)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getKeyComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/icu/impl/LocaleIDParser$1;

    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser$1;-><init>(Landroid/icu/impl/LocaleIDParser;)V

    return-object v0
.end method

.method private getKeyword()Ljava/lang/String;
    .locals 4

    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    :cond_0
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/LocaleIDParser;->isDoneOrKeywordAssign(C)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    iget v3, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getValue()Ljava/lang/String;
    .locals 4

    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    :cond_0
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/LocaleIDParser;->isDoneOrItemSeparator(C)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    iget v3, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private haveExperimentalLanguagePrefix()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    array-length v3, v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_3

    iget-object v3, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    aget-char v0, v3, v1

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_0

    const/16 v3, 0x5f

    if-ne v0, v3, :cond_3

    :cond_0
    iget-object v3, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    aget-char v0, v3, v2

    const/16 v3, 0x78

    if-eq v0, v3, :cond_1

    const/16 v3, 0x58

    if-ne v0, v3, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/16 v3, 0x69

    if-eq v0, v3, :cond_1

    const/16 v3, 0x49

    if-eq v0, v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_3
    return v2
.end method

.method private haveKeywordAssign()Z
    .locals 3

    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    :goto_0
    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    aget-char v1, v1, v0

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static isDoneOrItemSeparator(C)Z
    .locals 2

    const/4 v0, 0x1

    const v1, 0xffff

    if-eq p0, v1, :cond_0

    const/16 v1, 0x3b

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDoneOrKeywordAssign(C)Z
    .locals 2

    const/4 v0, 0x1

    const v1, 0xffff

    if-eq p0, v1, :cond_0

    const/16 v1, 0x3d

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTerminator(C)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x40

    if-eq p1, v1, :cond_0

    const v1, 0xffff

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x2e

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTerminatorOrIDSeparator(C)Z
    .locals 1

    const/16 v0, 0x5f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Landroid/icu/impl/LocaleIDParser;->isTerminator(C)Z

    move-result v0

    goto :goto_0
.end method

.method private next()C
    .locals 3

    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    const v0, 0xffff

    return v0

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    iget v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    aget-char v0, v0, v1

    return v0
.end method

.method private parseCountry()I
    .locals 9

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->atTerminator()Z

    move-result v6

    if-nez v6, :cond_6

    iget v4, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    iget v6, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    iget-object v6, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->isTerminatorOrIDSeparator(C)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v2, :cond_0

    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/icu/impl/LocaleIDParser;->hadCountry:Z

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->addSeparator()V

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    :cond_0
    invoke-static {v0}, Landroid/icu/impl/locale/AsciiUtil;->toUpper(C)C

    move-result v6

    invoke-direct {p0, v6}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    goto :goto_0

    :cond_1
    iget v6, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    iget-object v6, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int v1, v6, v3

    if-nez v1, :cond_3

    :cond_2
    :goto_1
    return v3

    :cond_3
    const/4 v6, 0x2

    if-lt v1, v6, :cond_4

    if-le v1, v7, :cond_5

    :cond_4
    iput v4, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v3, v3, -0x1

    iget-object v6, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v6, v3, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iput-boolean v8, p0, Landroid/icu/impl/LocaleIDParser;->hadCountry:Z

    goto :goto_1

    :cond_5
    if-ne v1, v7, :cond_2

    invoke-direct {p0, v3}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/icu/impl/LocaleIDs;->threeToTwoLetterRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v3, v5}, Landroid/icu/impl/LocaleIDParser;->set(ILjava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v6, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    return v6
.end method

.method private parseKeywords()I
    .locals 6

    iget-object v5, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {p0}, Landroid/icu/impl/LocaleIDParser;->getKeywordMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v2, 0x1

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v2, :cond_0

    const/16 v5, 0x40

    :goto_1
    invoke-direct {p0, v5}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/icu/impl/LocaleIDParser;->append(Ljava/lang/String;)V

    const/16 v5, 0x3d

    invoke-direct {p0, v5}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/icu/impl/LocaleIDParser;->append(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v5, 0x3b

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    return v4
.end method

.method private parseLanguage()I
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->haveExperimentalLanguagePrefix()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    aget-char v3, v3, v5

    invoke-static {v3}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v3

    invoke-direct {p0, v3}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    const/16 v3, 0x2d

    invoke-direct {p0, v3}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    const/4 v3, 0x2

    iput v3, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->isTerminatorOrIDSeparator(C)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v3

    invoke-direct {p0, v3}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    goto :goto_0

    :cond_1
    iget v3, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    iget-object v3, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    invoke-direct {p0, v5}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/icu/impl/LocaleIDs;->threeToTwoLetterLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v5, v1}, Landroid/icu/impl/LocaleIDParser;->set(ILjava/lang/String;)V

    :cond_2
    return v5
.end method

.method private parseScript()I
    .locals 6

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->atTerminator()Z

    move-result v4

    if-nez v4, :cond_3

    iget v3, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    iget v4, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    iget-object v4, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->isTerminatorOrIDSeparator(C)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v0}, Landroid/icu/impl/locale/AsciiUtil;->isAlpha(C)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->addSeparator()V

    invoke-static {v0}, Landroid/icu/impl/locale/AsciiUtil;->toUpper(C)C

    move-result v4

    invoke-direct {p0, v4}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v4

    invoke-direct {p0, v4}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    goto :goto_0

    :cond_1
    iget v4, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    iget v4, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    sub-int/2addr v4, v3

    const/4 v5, 0x5

    if-eq v4, v5, :cond_2

    iput v3, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    iget-object v4, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :goto_1
    return v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    return v4
.end method

.method private parseVariant()I
    .locals 8

    const/16 v7, 0x2d

    iget-object v6, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v5, 0x1

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    move-result v0

    const v6, 0xffff

    if-eq v0, v6, :cond_2

    const/16 v6, 0x2e

    if-ne v0, v6, :cond_1

    const/4 v5, 0x0

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/16 v6, 0x40

    if-ne v0, v6, :cond_4

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->haveKeywordAssign()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    iget v6, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    return v3

    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_5

    const/4 v5, 0x0

    const/16 v6, 0x5f

    if-eq v0, v6, :cond_0

    if-eq v0, v7, :cond_0

    iget v6, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    goto :goto_0

    :cond_5
    if-nez v4, :cond_0

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget-boolean v6, p0, Landroid/icu/impl/LocaleIDParser;->hadCountry:Z

    if-eqz v6, :cond_a

    :cond_6
    :goto_1
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->addSeparator()V

    if-eqz v1, :cond_7

    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x0

    :cond_7
    invoke-static {v0}, Landroid/icu/impl/locale/AsciiUtil;->toUpper(C)C

    move-result v0

    if-eq v0, v7, :cond_8

    const/16 v6, 0x2c

    if-ne v0, v6, :cond_9

    :cond_8
    const/16 v0, 0x5f

    :cond_9
    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    goto :goto_0

    :cond_a
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->addSeparator()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    array-length v1, v1

    add-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    return-void
.end method

.method private set(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private setKeywordValue(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/LocaleIDParser;->keywords:Ljava/util/Map;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "keyword must not be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "value must not be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {p0}, Landroid/icu/impl/LocaleIDParser;->getKeywordMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p2, :cond_0

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->getKeyComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Landroid/icu/impl/LocaleIDParser;->keywords:Ljava/util/Map;

    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->keywords:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    if-nez p3, :cond_5

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_5
    if-eqz p2, :cond_6

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/LocaleIDParser;->keywords:Ljava/util/Map;

    goto :goto_0
.end method

.method private setToKeywordStart()Z
    .locals 5

    const/4 v4, 0x1

    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    :goto_0
    iget-object v2, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    aget-char v2, v2, v0

    const/16 v3, 0x40

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/icu/impl/LocaleIDParser;->canonicalize:Z

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    :goto_1
    iget-object v2, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    aget-char v2, v2, v1

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_0

    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    return v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method private skipCountry()V
    .locals 4

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->atTerminator()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    iget v3, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    aget-char v2, v2, v3

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    iget v3, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    aget-char v2, v2, v3

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_1

    :cond_0
    iget v2, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    :cond_1
    iget v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->skipUntilTerminatorOrIDSeparator()V

    iget v2, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    sub-int v0, v2, v1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    const/4 v2, 0x3

    if-le v0, v2, :cond_3

    :cond_2
    iput v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    :cond_3
    return-void
.end method

.method private skipLanguage()V
    .locals 1

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->haveExperimentalLanguagePrefix()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    :cond_0
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->skipUntilTerminatorOrIDSeparator()V

    return-void
.end method

.method private skipScript()V
    .locals 4

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->atTerminator()Z

    move-result v2

    if-nez v2, :cond_2

    iget v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    iget v2, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    :cond_0
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->isTerminatorOrIDSeparator(C)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Landroid/icu/impl/locale/AsciiUtil;->isAlpha(C)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    iget v2, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    iget v2, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    sub-int/2addr v2, v1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    iput v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    :cond_2
    return-void
.end method

.method private skipUntilTerminatorOrIDSeparator()V
    .locals 1

    :cond_0
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->isTerminatorOrIDSeparator(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    return-void
.end method


# virtual methods
.method public defaultKeywordValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/impl/LocaleIDParser;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public getBaseName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->baseName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->baseName:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/LocaleIDParser;->parseBaseName()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->reset()V

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->skipLanguage()V

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->skipScript()V

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseCountry()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeywordMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v4, p0, Landroid/icu/impl/LocaleIDParser;->keywords:Ljava/util/Map;

    if-nez v4, :cond_1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->setToKeywordStart()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    if-eqz v2, :cond_7

    :goto_1
    iput-object v2, p0, Landroid/icu/impl/LocaleIDParser;->keywords:Ljava/util/Map;

    :cond_1
    iget-object v4, p0, Landroid/icu/impl/LocaleIDParser;->keywords:Ljava/util/Map;

    return-object v4

    :cond_2
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    move-result v0

    const/16 v4, 0x3d

    if-eq v0, v4, :cond_4

    const v4, 0xffff

    if-eq v0, v4, :cond_0

    :cond_3
    :goto_2
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    move-result v4

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    if-nez v2, :cond_6

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->getKeyComparator()Ljava/util/Comparator;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    :cond_5
    invoke-virtual {v2, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    goto :goto_1
.end method

.method public getKeywordValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/icu/impl/LocaleIDParser;->getKeywordMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public getKeywords()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/icu/impl/LocaleIDParser;->getKeywordMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->reset()V

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseLanguage()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageScriptCountryVariant()[Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->reset()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseLanguage()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseScript()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseCountry()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseVariant()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/impl/LocaleIDParser;->parseBaseName()V

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseKeywords()I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->reset()V

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->skipLanguage()V

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseScript()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->reset()V

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->skipLanguage()V

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->skipScript()V

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->skipCountry()V

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseVariant()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parseBaseName()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->baseName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->baseName:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Landroid/icu/impl/LocaleIDParser;->set(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->reset()V

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseLanguage()I

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseScript()I

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseCountry()I

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseVariant()I

    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public setBaseName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/impl/LocaleIDParser;->baseName:Ljava/lang/String;

    return-void
.end method

.method public setKeywordValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/impl/LocaleIDParser;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
